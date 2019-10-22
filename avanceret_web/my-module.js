module.exports = (function (params) {
    const {
        createPool
    } = require('mysql');

    const db = createPool({
        host: "localhost",
        user: "root",
        password: "",
        database: "cms",
        connectionLimit: 10
    });

    function extrapolate(object) {
        const keys = [];
        const values = [];
        for (let i in object) {
            keys.push(`${i} = ?`);
            values.push(object[i]);
        }
        return {
            keys,
            values
        }
    }

    function getAllUsers() {
        return new Promise(function (resolve, reject) {
            try {
                db.query('SELECT * FROM users', function (err, result) {
                    if (err) return reject(err);
                    resolve(result);
                })
            } catch (error) {
                reject(error);
            }
        })
    }

    function getSingleUser(id) {
        return new Promise(function (resolve, reject) {
            if (typeof id !== "number") return reject("ID must be a number");
            try {
                db.query('SELECT * FROM users WHERE id = ?', [id], function (err, result) {
                    if (err) return reject(err);
                    resolve(result);
                })
            } catch (error) {
                if (err) return reject(err);
            }
        });
    }

    function createUser(user) {
        return new Promise(function (resolve, reject) {
            try {
                const {
                    keys,
                    values
                } = extrapolate(user);
                const sql = `INSERT INTO users SET ${keys.join(', ')}`;
                db.query(sql, values, function (err, result) {
                    if (err) return reject(err);
                    resolve(result);
                })
            } catch (error) {
                if (err) return reject(err);
            }
        });

    }

    function updateUser(id, user) {
        return new Promise(function (resolve, reject) {
            if (typeof id !== "number") return reject("ID must be a number");
            if (typeof user !== "object") return reject("ID must be an object");
            try {
                const {
                    keys,
                    values
                } = extrapolate(user);
                const sql = `UPDATE users SET ${keys.join(', ')} WHERE id = ${id}`
                db.query(sql, values, function (err, result) {
                    if (err) return reject(err);
                    resolve(result);
                })
            } catch (error) {
                if (err) return reject(err);
            }
        });

    }

    function deleteUser(id) {
        return new Promise(function (resolve, reject) {
            if (typeof id !== "number") return reject("ID must be a number");
            try {
                db.query('DELETE FROM users WHERE id = ?', [id], function (err, result) {
                    if (err) return reject(err);
                    resolve(result);
                })
            } catch (error) {
                if (err) return reject(err);
            }
        });

    }
    return {
        getAllUsers,
        getSingleUser,
        createUser,
        updateUser,
        deleteUser
    }
})()