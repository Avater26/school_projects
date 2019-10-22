const db = require('../config/mysql.js');


exports.getProducts = async function (req, res, next) {
    try {
        const userSQL = `SELECT products.id, products.name, products.description, products.price, products.weight,
        products.amount, categories.name AS category, images.path FROM products
        INNER JOIN images ON products.fk_image = images.id
        INNER JOIN categories ON products.fk_category = categories.id;`

        const [rows] = await db.query(userSQL)

        res.render("admin_products", {
            results: rows,
            db: "Products"
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getNewProduct = async function (req, res, next) {
    try {
        const categoriesSQL = `SELECT id, name FROM categories`;

        const categories = await db.query(categoriesSQL);

        res.render("admin_new-product", {
            db: "Create new product",
            categories: categories[0]
        });

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");

    }
}

exports.createProduct = async function (req, res, next) {
    try {
        const file = req.files.picture;
        const newFilename = `${Date.now()}_${file.name}`;

        const tempFile = fs.readFileSync(file.path);
        fs.writeFileSync(join(__dirname, "../public/images/uploads", newFilename), tempFile);

        const imageSQL = `INSERT INTO images SET path = :path`;
        const productSQL = `INSERT INTO products 
        SET name = :name, description = :description, price = :price, weight = :weight, amount = :amount, 
        fk_category = :fk_category, fk_image = :fk_image`;

        const image = await db.query(imageSQL, {
            path: newFilename
        });

        await db.query(productSQL, {
            name: req.fields.name,
            description: req.fields.description,
            price: req.fields.price,
            weight: req.fields.weight,
            amount: req.fields.amount,
            fk_category: req.fields.category,
            fk_image: image[0].insertId
        });


        res.redirect("/admin/products");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}

exports.getProductEdit = async function (req, res, next) {
    try {
        const productSQL = `SELECT name, description, price, weight, amount, fk_category, images.path
        FROM products
        INNER JOIN images ON products.fk_image = images.id
        WHERE id = :id`;

        const categoriesSQL = `SELECT id, name FROM categories`;

        const imageSQL = `SELECT id, path FROM images
        WHERE id = {
            SELECT
        }`;

        const categories = await db.query(categoriesSQL);

        const [rows] = await db.query(productSQL, {
            id: req.params.id
        })

        res.render("admin_edit-product", {
            product: rows[0],
            categories: categories[0],
            db: "Edit Products"
        })

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.editProduct = async function (req, res, next) {
    try {
        const file = req.files.picture;
        const newFilename = `${Date.now()}_${file.name}`;

        const tempFile = fs.readFileSync(file.path);
        fs.writeFileSync(join(__dirname, "../public/images/uploads", newFilename), tempFile);

        const imageSQL = `INSERT INTO images SET path = :path`;
        const productSQL = `UPDATE products SET name = :name, description = :description, price = :price, 
        weight = :weight, amount = :amount, fk_category = :fk_category, fk_image = :fk_image
        WHERE id = :id;`;

        const image = await db.query(imageSQL, {
            path: newFilename
        });

        await db.query(productSQL, {
            id: req.params.id,
            name: req.fields.name,
            description: req.fields.description,
            price: req.fields.price,
            weight: req.fields.weight,
            amount: req.fields.amount,
            fk_image: image[0].insertId
        })

        res.redirect("/admin/products");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}


exports.deleteProduct = async function (req, res, next) {
    try {
        const productSQL = `DELETE FROM products 
        WHERE id = :id`;

        await db.query(productSQL, {
            id: req.params.id
        });

        res.redirect("/admin/products");

    } catch (error) {
        console.log(error);
        res.send("Something went wrong");
    }
}