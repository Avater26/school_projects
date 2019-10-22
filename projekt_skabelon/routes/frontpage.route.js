const {
    frontpage
} = require("../controllers/frontpage.controller");

module.exports = function (app) {
    app.get("/", frontpage);
}