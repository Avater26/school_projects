const db = require('../config/mysql.js');

exports.getCategories = async function (req, res, next) {
    try {
        const categorySQL = `SELECT id, name, description FROM categories;`

        const [rows] = await db.query(categorySQL)

        res.render("admin_categories", {
            results: rows,
            db: "Categories"
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getNewCategory = async function (req, res, next) {
    try {

        res.render("admin_new-category", {
            db: "Create new Categories"
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.createCategory = async function (req, res, next) {
    try {

        const profileSQL = `INSERT INTO categories 
        SET name = :name, description = :description`;

        const profile = await db.query(profileSQL, {
            name: req.fields.name,
            description: req.fields.description
        });

        res.redirect("/admin/categories");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getCategoryEdit = async function (req, res, next) {
    try {
        const categorySQL = `SELECT id, name, description FROM categories WHERE id = :id;`;

        const [rows] = await db.query(categorySQL, {
            id: req.params.id
        })

        res.render("admin_edit-category", {
            category: rows[0],
            db: "Edit Categories"
        })

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.editCategory = async function (req, res, next) {
    try {
        const categorySQL = `UPDATE categories 
        SET name = :name, description = :description WHERE id = :id;`;

        await db.query(categorySQL, {
            id: req.params.id,
            name: req.fields.name,
            description: req.fields.description
        })

        res.redirect("/admin/categories");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.deleteCategory = async function (req, res, next) {
    try {
        const categorySQL = `DELETE FROM categories 
        WHERE id = :id`;

        await db.query(categorySQL, {
            id: req.params.id
        });

        res.redirect("/admin/categories");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}