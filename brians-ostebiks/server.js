module.exports = function (app) {
    app.listen(3000, function (err) {
        if (err) {
            console.log(err);
            process.exit(1);
        }
        console.log("Is running");
    })
}