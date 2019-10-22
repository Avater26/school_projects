const controllers = require("../controllers/pages-controllers");

module.exports = function (app) {
    app.get("/page", controllers.mainPage);
    app.get("/page/:title", controllers.mainPage);
}