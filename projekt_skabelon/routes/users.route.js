const auth = require("../middleware/auth");
const isEmployee = require("../middleware/isEmployee");
const isAdmin = require("../middleware/isAdmin");

const {
    getUsers,
    showUserForm,
    editUser,
    deleteUser
} = require("../controllers/users.controller");

module.exports = function (app) {
    app.get("/users", auth, isEmployee, getUsers);
    app.get("/editUser/:id", auth, isAdmin, showUserForm);
    app.post("/editUser/:id", auth, isAdmin, editUser);
    app.get("/deleteUser/:id", auth, isAdmin, deleteUser);
}