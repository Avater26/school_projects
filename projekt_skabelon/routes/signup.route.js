const {
    showPage,
    post
} = require("../controllers/signup.controller");

module.exports = function (app) {
    app.get("/sign_up", showPage);
    app.post("/sign_up", post);
}