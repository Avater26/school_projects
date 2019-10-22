const controller = require("../controllers/products");

module.exports = function (app) {
    app.get("/products", controller.getAllProducts);
    app.get("/products/rediger/:id", controller.getOneProduct);
    app.post("/products/rediger/:id", controller.editOneProduct);
    app.get("/products/slet/:id", controller.delOneProduct);
}