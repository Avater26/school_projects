const db = require('../config/mysql.js');
const fs = require('fs');
const {
    join
} = require("path");

const {
    hashSync
} = require("bcryptjs");

exports.showPage = function (req, res, next) {
    res.render("signup");
}

exports.post = async function (req, res, next) {
    if (Object.prototype.toString.call(req.fields.email) === "[object Null]" ||
        Object.prototype.toString.call(req.fields.email) === "[object Undefined]") {
        req.flash("error", "Email must not be empty, twat");
        res.redirect("/signup");
        return;
    }
    try {

        const file = req.files.picture;
        const newFilename = `${Date.now()}_${file.name}`;

        const tempFile = fs.readFileSync(file.path);
        fs.writeFileSync(join(__dirname, "../public/images/uploads", newFilename), tempFile);


        const profileSQL = `INSERT INTO testing.profiles 
        SET name = :name, email = :email, fk_image = :fk_image`;
        const userSQL = `INSERT INTO testing.users 
        SET username = :username, password = :password, fk_profile = :fk, fk_role = 4`;
        const imageSQL = `INSERT INTO images SET path = :path`;

        const image = await db.query(imageSQL, {
            path: newFilename
        });

        const profile = await db.query(profileSQL, {
            name: req.fields.name,
            email: req.fields.email,
            fk_image: image[0].insertId
        });

        const hashPass = hashSync(req.fields.password, 10);

        await db.query(userSQL, {
            username: req.fields.username,
            password: hashPass,
            fk: profile[0].insertId
        });

        res.redirect("/users");

    } catch (error) {
        if (error.code === "ER_DUP_ENTRY") {
            return res.send("User already exists");
        }
        console.log(error);
        res.send("Something went wrong");
    }
}