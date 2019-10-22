const db = require('../config/mysql.js');
const fs = require('fs');
const {
    join
} = require("path");

exports.getProfiles = async function (req, res, next) {
    try {
        const profileSQL = `SELECT profiles.id, profiles.name, profiles.email, images.path
        FROM profiles
        INNER JOIN images ON profiles.fk_image = images.id;`

        const [rows] = await db.query(profileSQL)

        res.render("admin_profiles", {
            results: rows,
            db: "Profiles"
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getProfileEdit = async function (req, res, next) {
    try {
        const profileSQL = `SELECT profiles.id, profiles.name, profiles.email, images.path
        FROM profiles
        INNER JOIN images ON profiles.fk_image = images.id;`;

        const [rows] = await db.query(profileSQL, {
            id: req.params.id
        })

        res.render("admin_edit-profile", {
            profile: rows[0],
            db: "Edit Profiles"
        })

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.editProfile = async function (req, res, next) {
    try {
        const file = req.files.picture;
        const newFilename = `${Date.now()}_${file.name}`;

        const tempFile = fs.readFileSync(file.path);
        fs.writeFileSync(join(__dirname, "../public/images/uploads", newFilename), tempFile);

        const imageSQL = `INSERT INTO images SET path = :path`;
        const profileSQL = `UPDATE profiles SET name = :name, email = :email WHERE id = :id;`;

        const image = await db.query(imageSQL, {
            path: newFilename
        });

        await db.query(profileSQL, {
            name: req.fields.name,
            email: req.fields.email,
            fk_image: image[0].insertId
        });

        res.redirect("/admin/profiles");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.deleteProfile = async function (req, res, next) {
    try {
        const profileSQL = `DELETE FROM profiles 
        WHERE id = (
            SELECT fk_profile FROM users WHERE id = :id
        )`;

        await db.query(profileSQL, {
            id: req.params.id
        });

        res.redirect("/admin/profiles");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}