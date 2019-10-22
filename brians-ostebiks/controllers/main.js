const Product = require("../models/Product.model");

exports.main = function (req, res, next) {
    res.render('form');
}

exports.createProduct = function (req, res, next) {
    const doc = new Product();
    doc.name = req.fields.name;
    doc.description = req.fields.description;
    doc.price = req.fields.price;
    doc.save();
    res.render('nice');
}