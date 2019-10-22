require("dotenv").config();
const express = require("express");
const app = express();

require("./config/session")(app);
require("./config/flash")(app);
require("./config/locals")(app);
require("./config/views")(app);
require("./config/parser")(app);

require("./routes/frontpage.route")(app);
require("./routes/signup.route")(app);
require("./routes/users.route")(app);
require("./routes/products.route")(app);
require("./routes/login.route")(app);

require("./routes/admin.route")(app);

require("./server/server")(app);