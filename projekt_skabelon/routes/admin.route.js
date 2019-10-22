const auth = require("../middleware/auth");
const isAdmin = require("../middleware/isAdmin");

const {
    getDash,
    getUsers,
    getNewUser,
    createUser,
    getUserEdit,
    editUser
} = require("../controllers/admin_users.controller");
const {
    getCategories,
    getNewCategory,
    createCategory,
    getCategoryEdit,
    editCategory,
    deleteCategory
} = require("../controllers/admin_categories.controller");
const {
    getProducts,
    getNewProduct,
    createProduct,
    getProductEdit,
    editProduct,
    deleteProduct
} = require("../controllers/admin_products.controller");
const {
    getProfiles,
    getProfileEdit,
    editProfile,
    deleteProfile
} = require("../controllers/admin_profiles.controller");
const {
    getRoles,
    getNewRole,
    createRole,
    getRoleEdit,
    editRole,
    deleteRole
} = require("../controllers/admin_roles.controller");

module.exports = function (app) {
    // Load admin panel
    app.get("/admin", auth, isAdmin, getDash);

    // Load admin panel dashboards
    app.get("/admin/users", auth, isAdmin, getUsers);
    app.get("/admin/profiles", auth, isAdmin, getProfiles);
    app.get("/admin/products", auth, isAdmin, getProducts);
    app.get("/admin/categories", auth, isAdmin, getCategories);
    app.get("/admin/roles", auth, isAdmin, getRoles);

    // Load and create new user, product, category or role
    app.get("/admin/user/new", auth, isAdmin, getNewUser);
    app.post("/admin/user/new", auth, isAdmin, createUser);

    app.get("/admin/product/new", auth, isAdmin, getNewProduct);
    app.post("/admin/product/new", auth, isAdmin, createProduct);

    app.get("/admin/category/new", auth, isAdmin, getNewCategory);
    app.post("/admin/category/new", auth, isAdmin, createCategory);

    app.get("/admin/role/new", auth, isAdmin, getNewRole);
    app.post("/admin/role/new", auth, isAdmin, createRole);

    // Load and edit a user, profile, product, category or role
    app.get("/admin/user/edit/:id", auth, isAdmin, getUserEdit);
    app.post("/admin/user/edit/:id", auth, isAdmin, editUser);

    app.get("/admin/profile/edit/:id", auth, isAdmin, getProfileEdit);
    app.post("/admin/profile/edit/:id", auth, isAdmin, editProfile);

    app.get("/admin/product/edit/:id", auth, isAdmin, getProductEdit);
    app.post("/admin/product/edit/:id", auth, isAdmin, editProduct);

    app.get("/admin/category/edit/:id", auth, isAdmin, getCategoryEdit);
    app.post("/admin/category/edit/:id", auth, isAdmin, editCategory);

    app.get("/admin/role/edit/:id", auth, isAdmin, getRoleEdit);
    app.post("/admin/role/edit/:id", auth, isAdmin, editRole);

    // Delete a profile, product, category or role
    app.get("/admin/profile/delete/:id", auth, isAdmin, deleteProfile);
    app.get("/admin/product/delete/:id", auth, isAdmin, deleteProduct);
    app.get("/admin/category/delete/:id", auth, isAdmin, deleteCategory);
    app.get("/admin/role/delete/:id", auth, isAdmin, deleteRole);
}