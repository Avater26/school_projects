const stripe = require("stripe")("sk_test_jENMEXKSUNTDhQHwx88Go6dR00Eop7BtgP");

module.exports = function (app) {
    app.get('/', (req, res, next) => {
        res.render('page', {
            'title': 'Front page',
        });
    });

    //Event 1
    app.get('/event1', (req, res, next) => {
        res.render('event1', {
            'title': 'Front page',
        });
    });

    app.post('/event1', (req, res, next) => {

        stripe.charges.create({
            amount: 20000,
            currency: "dkk",
            source: "tok_amex",
            description: "Example charge"
        });
        res.render('kvitering', {
            'title': 'Kvitering',
        });
    });

    //Event 2
    app.get('/event2', (req, res, next) => {
        res.render('event2', {
            'title': 'Front page',
        });
    });

    app.post('/event2', (req, res, next) => {
        stripe.charges.create({
            amount: 50000,
            currency: "dkk",
            source: "tok_amex",
            description: "Example charge"
        });
        res.render('kvitering', {
            'title': 'Kvitering',
        });
    });

    //Event 3
    app.get('/event3', (req, res, next) => {
        res.render('event3', {
            'title': 'Front page',
        });
    });

    app.post('/event3', (req, res, next) => {
        stripe.charges.create({
            amount: 85000,
            currency: "dkk",
            source: "tok_amex",
            description: "Example charge"
        });
        res.render('kvitering', {
            'title': 'Kvitering',
        });
    });

};