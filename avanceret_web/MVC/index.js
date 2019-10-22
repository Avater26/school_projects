const express = require("express");
const app = express();
// CONFIG
require("./config/locals")(app);
require("./config/static")(express, app);
require("./config/views")(app);

// ROUTES
require("./routes/main")(app);

// SERVER
require("./server")(app);