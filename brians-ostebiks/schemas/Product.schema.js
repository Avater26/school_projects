const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const Product = new Schema({
    name: {
        type: String
    },
    description: {
        type: String
    },
    photo: {
        type: String
    },
    price: {
        type: Number
    }
});

module.exports = Product;