const express = require("express");
const app = express();

require("./config/mongo")();
require("./config/session")(app);
require("./config/flash")(app);
require("./config/views")(app)
require("./config/static-files")(app, express);
require("./config/formidable")(app);
require("./routes/main")(app)
require("./routes/products")(app)
require("./server.js")(app);