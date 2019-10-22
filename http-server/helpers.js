const fs = require('fs');
const mimetypes = require('./mimetypes');
const path = require('path');

module.exports.respond = function (req, res, msg, status = 200) {
    res.writeHead(status, {
        'Content-type': 'application/json'
    });
    res.end(JSON.stringify(msg));
}

module.exports.fileRespond = function (req, res, filename) {
    let extname = path.extname(filename)
    let mime = mimetypes[extname];
    fs.readFile(filename, (err, filecontent) => {
        if (err) {
            module.exports.respond(req, res, 'Fil ikke fundet', 404);
            return;
        }
        res.writeHead(200, {
            'Content-type': mime.type
        });
        res.end(filecontent);
    })
}