const mongoose = require('mongoose');
const Product = require('../schemas/Product.schema');

module.exports = mongoose.model("Product", Product);