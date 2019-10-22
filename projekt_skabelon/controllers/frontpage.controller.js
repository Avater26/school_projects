const db = require('../config/mysql');

exports.frontpage = async function (req, res, next) {
    try {
        const productSQL = `SELECT products.id, products.name, products.price, images.path FROM products
    INNER JOIN images ON products.fk_image = images.id
    ORDER BY RAND()
    LIMIT 3`;

        const [rows] = await db.query(productSQL);

        res.render("frontpage", {
            results: rows
        })

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}