const db = require('../config/mysql.js');

const {
    compareSync
} = require("bcryptjs");


exports.getLoginForm = function (req, res, next) {
    res.render("login");
}

exports.loginCheck = async function (req, res, next) {
    try {
        const userSQL = `SELECT id, password FROM users WHERE username = :username`;

        const [rows] = await db.query(userSQL, {
            username: req.fields.username
        });

        if (rows.length !== 1) {
            res.redirect("/login");
            return;
        }
        if (!compareSync(req.fields.password, rows[0].password)) {
            res.redirect("/login");
            return;
        }
        req.session.isLoggedIn = true;
        req.session.user = rows[0].id;
        req.app.locals.isLoggedIn = true;
        res.redirect("/");
    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getAdminLoginForm = function (req, res, next) {
    res.render("login_admin");
}

exports.adminLoginCheck = async function (req, res, next) {
    try {
        const userSQL = `SELECT id, password FROM users WHERE username = :username`;

        const [rows] = await db.query(userSQL, {
            username: req.fields.username
        });

        if (rows.length !== 1) {
            res.redirect("/");
            return;
        }
        if (!compareSync(req.fields.password, rows[0].password)) {
            res.redirect("/");
            return;
        }
        req.session.isLoggedIn = true;
        req.session.user = rows[0].id;
        req.app.locals.isLoggedIn = true;
        res.redirect("/admin");
    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.logout = function (req, res, next) {
    delete req.session.isLoggedIn;
    delete req.app.locals.isLoggedIn;
    delete req.session.user;
    res.redirect("/");
}