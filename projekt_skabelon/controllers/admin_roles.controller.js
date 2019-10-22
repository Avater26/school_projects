const db = require('../config/mysql.js');

exports.getRoles = async function (req, res, next) {
    try {
        const roleSQL = `SELECT id, name, level FROM roles;`

        const [rows] = await db.query(roleSQL)

        res.render("admin_roles", {
            results: rows,
            db: "Roles"
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getNewRole = async function (req, res, next) {
    try {
        const rolesSQL = `SELECT id, name, level FROM roles`;

        const roles = await db.query(rolesSQL);

        res.render("admin_new-role", {
            db: "Create new role",
            roles: roles[0]
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");

    }
}

exports.createRole = async function (req, res, next) {
    try {

        const roleSQL = `INSERT INTO roles 
        SET name = :name, level = :level`;

        const role = await db.query(roleSQL, {
            name: req.fields.name,
            level: req.fields.level
        });

        res.redirect("/admin/roles");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getRoleEdit = async function (req, res, next) {
    try {

        const rolesSQL = `SELECT name, level FROM roles`;

        const roles = await db.query(rolesSQL);

        res.render("admin_edit-role", {
            db: "Edit Role",
            roles: roles[0]
        })

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.editRole = async function (req, res, next) {
    try {
        const roleSQL = `UPDATE roles SET name = :name, level = :level WHERE id = :id;`;

        await db.query(roleSQL, {
            id: req.params.id,
            name: req.fields.name,
            level: req.fields.level
        })


        res.redirect("/admin/roles");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.deleteRole = async function (req, res, next) {
    try {
        const roleSQL = `DELETE FROM roles 
        WHERE id = :id`;

        await db.query(roleSQL, {
            id: req.params.id
        });

        res.redirect("/admin/roles");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}