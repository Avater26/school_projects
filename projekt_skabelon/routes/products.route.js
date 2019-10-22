const {
    getProducts,
    getSingleProduct
} = require("../controllers/products.controller");

module.exports = function (app) {
    app.get("/products", getProducts);
    app.get("/product/:id", getSingleProduct);
}