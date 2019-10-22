const db = require('../config/mysql.js');
const fs = require('fs');
const {
    join
} = require("path");

const {
    hashSync
} = require("bcryptjs");

exports.getDash = async function (req, res, next) {
    try {
        res.render("admin_dash", {
            db: "Dashboard"
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.getUsers = async function (req, res, next) {
    try {
        const userSQL = `SELECT users.id, users.username,  roles.name AS role
        FROM users
        INNER JOIN roles ON users.fk_role = roles.id;`

        const [rows] = await db.query(userSQL)

        res.render("admin_users", {
            results: rows,
            db: "Users"
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getNewUser = async function (req, res, next) {
    try {
        const rolesSQL = `SELECT id, name FROM roles`;

        const roles = await db.query(rolesSQL);

        res.render("admin_new-user", {
            db: "Create new user",
            roles: roles[0]
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");

    }
}

exports.createUser = async function (req, res, next) {
    if (Object.prototype.toString.call(req.fields.email) === "[object Null]" ||
        Object.prototype.toString.call(req.fields.email) === "[object Undefined]") {
        req.flash("error", "Email must not be empty, twat");
        res.redirect("/admin/user/new");
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
        SET username = :username, password = :password, fk_profile = :fk_profile, fk_role = :fk_role`;

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
            fk_profile: profile[0].insertId,
            fk_role: req.fields.role
        });

        res.redirect("/admin/users");

    } catch (error) {
        if (error.code === "ER_DUP_ENTRY") {
            return res.send("User already exists");
        }
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getUserEdit = async function (req, res, next) {
    try {
        const userSQL = `SELECT id, username, fk_role
        FROM users
        WHERE users.id = :id`;

        const rolesSQL = `SELECT id, name FROM roles`;

        const roles = await db.query(rolesSQL);

        const [rows] = await db.query(userSQL, {
            id: req.params.id
        })

        res.render("admin_edit-user", {
            user: rows[0],
            roles: roles[0]
        })

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.editUser = async function (req, res, next) {
    try {
        const userSQL = `UPDATE users SET username = :username WHERE id = :id;`;

        await db.query(userSQL, {
            id: req.params.id,
            username: req.fields.username
        })


        res.redirect("/admin/users");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}