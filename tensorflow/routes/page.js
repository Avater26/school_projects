module.exports = function (app) {
    // app.get('/', (req, res, next) => {
    //     res.render('index', {})
    // });
    app.get('/', (req, res, next) => {
        res.render('image', {})
    });
};