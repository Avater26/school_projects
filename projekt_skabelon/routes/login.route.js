const {
    getLoginForm,
    loginCheck,
    getAdminLoginForm,
    adminLoginCheck,
    logout
} = require("../controllers/login.controller");

module.exports = function (app) {
    app.get("/login", getLoginForm);
    app.post("/login", loginCheck);

    app.get("/login_admin", getAdminLoginForm);
    app.post("/login_admin", adminLoginCheck);

    app.get("/logout", logout)
}