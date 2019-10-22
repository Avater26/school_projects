const db = require("../config/mysql");

exports.getSearch = function (req, res, next) {
    try {
        let values = req.query;​

        if (values.name == undefined) {
            values.name = '';
        }
        if (values.category == undefined) {
            values.category = '';
        }
        if (values.minPrice == undefined || isNaN(values.minPrice)) {
            values.minPrice = '';
        }
        if (values.maxPrice == undefined || isNaN(values.maxPrice)) {
            values.maxPrice = '';
        }​
        if (parseInt(values.minPrice) > parseInt(values.maxPrice)) {
            let temp = values.maxPrice;
            values.maxPrice = values.minPrice;
            values.minPrice = temp;
        }​​

        let productSQL = `
           SELECT products.id, products.name, products.price, images.path, 
           categories.name AS category
           FROM products
           INNER JOIN categories ON products.fk_category = categories.id
           INNER JOIN images ON products.fk_image = images.id
           WHERE 1=1 `;

        let sql_params = [];​
        if (values.name != undefined && values.name != '') {
            productSQL += ' AND product.name LIKE ? ';
            sql_params.push('%' + values.name + '%');
        }​
        if (values.category != undefined && values.category != '') {
            productSQL += ' AND product.fk_category = ? ';
            sql_params.push(values.category);
        }​
        if (values.minPrice != undefined && values.minPrice != '') {
            productSQL += ' AND product.price >= ? ';
            sql_params.push(values.minPrice);
        }​
        if (values.maxPrice != undefined && values.maxPrice != '') {
            productSQL += ' AND product.price <= ? ';
            sql_params.push(values.maxPrice);
        }

        const [rows] = await db.query(productSQL, values);

        res.render("search", {
            results: rows
        })
    } catch (error) {

    }

}