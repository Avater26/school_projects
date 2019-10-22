const db = require("../config/mysql")();

exports.getPage = function (title) {
    return new Promise(function (resolve, reject) {
        try {
            const sql = title ? "SELECT * FROM pages WHERE title = ?" : "SELECT * FROM pages WHERE frontpage = 1";
            db.query(sql, [title], function (err, result) {
                if (err) return reject(err);
                resolve(result[0]);
            })

        } catch (error) {
            reject(error)
        }
    })
}