const db = require('../config/mysql.js');

exports.getProducts = async function (req, res, next) {
    try {
        let items_pr_page = 10;

        let current_page = 1;

        if (req.query.page != undefined) {
            if (parseInt(req.query.page) < 1) {
                res.redirect('/products');
                return;
            }
            if (parseInt(req.query.page) >= 1) {
                current_page = parseInt(req.query.page);
            }
        }

        let [result] = await db.execute('SELECT COUNT(*) AS total_items FROM products');
        
        let total_items = result[0].total_items;

        let offset = (current_page - 1) * items_pr_page;

        let total_pages = Math.ceil(total_items / items_pr_page);

        if (offset > total_items) {
            res.redirect('/products?page=' + total_pages);
            return;
        }

        const productSQL = `SELECT products.id, products.name, products.price,
                            products.weight, products.amount, categories.name AS c_name, images.path FROM products
                            INNER JOIN categories ON products.fk_category = categories.id
                            INNER JOIN images ON products.fk_image = images.id
                            LIMIT :offset,:items_pr_page`

        const [rows] = await db.query(productSQL, {
            offset: offset,
            items_pr_page: items_pr_page
        })

        res.render("products", {
            results: rows,
            page: 'paging',
            total_pages: total_pages,
            current_page: current_page
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getSingleProduct = async function (req, res, next) {
    try {
        const productSQL = `SELECT products.id, products.name, products.description, products.price,
                            products.weight, products.amount, categories.name AS c_name, images.path FROM products
                            INNER JOIN categories ON products.fk_category = categories.id
                            INNER JOIN images ON products.fk_image = images.id
                            WHERE products.id = :id`

        const [rows] = await db.query(productSQL, {
            id: req.params.id
        })

        res.render("products", {
            results: rows[0]
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}