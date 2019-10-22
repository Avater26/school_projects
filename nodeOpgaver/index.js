const express = require('express');
const app = express();
const fs = require('fs');

app.set('view engine', 'ejs');
app.use(express.static('./public'));

app.get('/', function (req, res) {
    const frontPage = fs.readFileSync('./data/frontPage.json');
    res.render('page', JSON.parse(frontPage));
});

app.get('/up', function (req, res) {
    res.render('page', {
        'title': 'Is that up dog?'
    });
});

app.listen(7331);