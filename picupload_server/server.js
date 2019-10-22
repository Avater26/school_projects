const app = require('express')();
const formidable = require('express-formidable');
const fs = require('fs');

app.use(formidable());

app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.post('/files', (req, res, next) => {
    console.log(req.files.file);
    
    const renamedFilename = `${Date.now()}_${req.files.file.name}`;
    fs.readFile(req.files.file.path, (err, data) => {
        if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
        fs.writeFile(`./uploads/${renamedFilename}.png`, data, err => {
            if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
            res.status(200);
            res.end()
        });
    });
});
app.listen(3000, () => {
    console.log('http://localhost:3000');
})