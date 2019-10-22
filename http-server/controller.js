const helpers = require('./helpers');
const logger = require('./logger');
const url = require('url');
const fs = require('fs');
const path = require('path');

const routes = {};

if (fs.existsSync('./api')) {
    fs.readDirSync('./api').forEach(file => {
        let basename = path.basename(file, '.js');
        routes[`/api/${basename}`] = require(`./api/${basename}`);
    });
}
routes['/api/duck'] = require('/api/duck');

module.exports = function (req, res) {
    logger(req, res);
    let endPoint = url.parse(req.url).pathname;
    if (endPoint === '/') {
        helpers.redirect(res, '/public/html/index.html');
    }
    let regex = /\/(public\/(html|css|js|img)\/.+\.(html|css|js|jpg|JPG|jpeg|JPEG|png|PNG|gif|GIF))$/;
    let fileReq = endPoint.match(regex);
    if (fileReq) {
        // helpers.respond(req, res, fileReq[1])
        helpers.fileRespond(req, res, fileReq[1])
        return;
    }

    if (routes[endPoint]) {
        let action = routes[endPoint];
        if (action[req.method]) {
            let handler = action[req.method].handler;
            handler(req, res);
            return;
        }
        helpers.respond(req, res, `Metode ${req.method} ikke tilladt her`, 405)
    }

    helpers.respond(req, res, {
        besked: 'Fil' + endPoint + 'ikke fundet'
    }, 404);
}