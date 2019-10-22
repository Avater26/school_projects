module.exports = function (app) {
    app.listen(1337, function (err) {
        if (err) {
            console.log(err);
            process.exit(1);
        }
        console.log("App kører på 1337");
        
    })
}