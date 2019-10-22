const http = require('http');
const controller = require('./controller');


http.createServer(controller).listen('3000');
console.log("Server startet, gå til http://localhost:3000/public/html/index.html");