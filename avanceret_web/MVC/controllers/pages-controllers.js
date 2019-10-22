const model = require("../models/pages_model");
exports.mainPage = async function (req, res, next) {
    try {
        let title = req.params.title || '';
        const page = await model.getPage(title)
        res.render("page", page);
    } catch (error) {
        console.error(error);
        res.end();

    }
}