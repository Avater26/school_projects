const Product = require("../models/Product.model");

exports.getAllProducts = async function (req, res, next) {
    try {
        let antal = req.query.antal || 10;
        const products = await Product.find().limit(parseInt(antal));
        res.render('product-list', {
            products
        });
    } catch (error) {
        console.error(error);
        res.send("shit")
    }
}
exports.getOneProduct = async function (req, res, next) {
    try {
        const product = await Product.findById(req.params.id);
        res.render('edit-product', {
            product
        });
    } catch (error) {
        console.error(error);
        res.send("shit")
    }
}
exports.editOneProduct = async function (req, res, next) {
    try {
        const product = await Product.findByIdAndUpdate(req.params.id, {
            $set: {
                name: req.fields.name,
                description: req.fields.description,
                price: req.fields.price
            }
        });
        req.session.flash = {
            type: "info",
            message: "Ayy lmao"
        };
        res.redirect("/products/rediger/" + req.params.id);
    } catch (error) {
        console.error(error);
        req.session.flash = {
            type: "error",
            message: "shit"
        };
        res.redirect("/products/rediger/" + req.params.id);
    }
}
exports.delOneProduct = async function (req, res, next) {
    try {
        const product = await Product.findByIdAndRemove(req.params.id);
        req.session.flash = {
            type: "success",
            message: "It is done"
        };
        res.redirect("/products");
    } catch (error) {
        console.error(error);
        req.session.flash = {
            type: "error",
            message: "oh shit"
        };
        res.redirect("/products");
    }
}