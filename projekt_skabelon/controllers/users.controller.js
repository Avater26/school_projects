const db = require('../config/mysql.js');
const fs = require('fs');
const {
    join
} = require("path");

exports.getUsers = async function (req, res, next) {
    try {
        const userSQL = `SELECT users.id, users.username, profiles.name, profiles.email
        FROM users
        INNER JOIN profiles ON users.fk_profile = profiles.id;`

        const [rows] = await db.query(userSQL)

        res.render("users", {
            results: rows
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.showUserForm = async function (req, res, next) {
    try {
        const userSQL = `SELECT users.id, users.username, profiles.name, profiles.email FROM users
        INNER JOIN profiles ON users.fk_profile = profiles.id WHERE users.id = :id`;

        const [rows] = await db.query(userSQL, {
            id: req.params.id
        })

        res.render("edit-user", {
            user: rows[0]
        })

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.editUser = async function (req, res, next) {
    try {

        const file = req.files.picture;
        const newFilename = `${Date.now()}_${file.name}`;

        const tempFile = fs.readFileSync(file.path);
        fs.writeFileSync(join(__dirname, "../public/images/uploads", newFilename), tempFile);


        const userSQL = `UPDATE users SET username = :username WHERE id = :id;`;
        const profileSQL = `UPDATE profiles SET name = :name, email = :email 
        WHERE id = (
            SELECT fk_profile FROM users WHERE id = :id
        );`;
        const imageSQL = `INSERT INTO images SET path = :path`;

        await db.query(userSQL, {
            id: req.params.id,
            username: req.fields.username
        })

        await db.query(profileSQL, {
            id: req.params.id,
            name: req.fields.name,
            email: req.fields.email,
        })

        await db.query(imageSQL, {
            path: newFilename
        });

        const path = req.route.path.replace(":id", "");
        res.redirect(path + req.params.id);

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.deleteUser = async function (req, res, next) {
    try {
        const profileSQL = `DELETE FROM profiles 
        WHERE id = (
            SELECT fk_profile FROM users WHERE id = :id
        )`;

        await db.query(profileSQL, {
            id: req.params.id
        });

        res.redirect("/users");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}