const db = require('../mysql')();
const {
    extrapolate,
} = require('../helper');

class Query {
    constructor(table) {
        this.table = table;
        return this;
    }
    create(data) {
        const {
            keys,
            values
        } = extrapolate(data)
        this.SQL = `INSERT INTO ${this.table} SET ${keys.join(', ')}`
        this.values = values;
        return this;
    }
    find(data = {
        1: 1
    }) {
        const {
            keys,
            values
        } = extrapolate(data);
        this.SQL = `SELECT * FROM ${this.table} WHERE ${keys.join(' AND ')}`;
        this.values = values;
        return this;
    }
    findById(id) {
        this.SQL = `SELECT * FROM ${this.table} WHERE id = ${id}`;
        return this;
    }
    findOneById(id) {
        this.SQL = `SELECT * FROM ${this.table} WHERE id = ${id} LIMIT 1`;
        return this;
    }
    findAndUpdate(kriterier = {
        1: 1
    }, data) {
        const kriterierObject = extrapolate(kriterier);
        const dataObjects = extrapolate(data);
        this.SQL = `UPDATE ${this.table} SET ${dataObjects.keys.join(', ')} WHERE ${kriterierObject.keys.join(' AND ')}`;
        this.values = [...dataObjects.values, ...kriterierObject.values];
        return this;
    }
    findOneAndUpdate(kriterier = {
        1: 1
    }, data) {
        const kriterierObject = extrapolate(kriterier);
        const dataObjects = extrapolate(data);
        this.SQL = `UPDATE ${this.table} SET ${dataObjects.keys.join(', ')} WHERE ${kriterierObject.keys.join(' AND ')} LIMIT 1`;
        this.values = [...dataObjects.values, ...kriterierObject.values];
        return this;
    }
    findByIdAndUpdate(id, data = {
        1: 1
    }) {
        const {
            keys,
            values
        } = extrapolate(data);
        this.SQL = `UPDATE ${this.table} SET ${keys.join(', ')} WHERE id = ${id}`;
        this.values = values;
        return this;
    }
    findOneByIdAndUpdate(id, data = {
        1: 1
    }) {
        const {
            keys,
            values
        } = extrapolate(data);
        this.SQL = `UPDATE ${this.table} SET ${keys.join(', ')} WHERE id = ${id} LIMIT 1`;
        this.values = values;
        return this;
    }
    findAndDelete(kriterier = {
        1: 1
    }) {
        const {
            keys,
            values
        } = extrapolate(kriterier);
        this.SQL = `DELETE FROM ${this.table} WHERE ${keys.join(' AND ')}`;
        this.values = values;
        return this;
    }
    findOneAndDelete(kriterier = {
        1: 1
    }) {
        const {
            keys,
            values
        } = extrapolate(kriterier);
        this.SQL = `DELETE FROM ${this.table} WHERE ${keys.join(' AND ')} LIMIT 1`;
        this.values = values;
        return this;
    }
    findByIdAndDelete(id) {
        this.SQL = `DELETE FROM ${this.table} WHERE id = ${id}`;
        return this;
    }
    findOneByIdAndDelete(id) {
        this.SQL = `DELETE FROM ${this.table} WHERE id = ${id} LIMIT 1`;
        return this;
    }
    exec() {
        const superThis = this;
        return new Promise(function (resolve, reject) {
            try {
                db.query(superThis.SQL, superThis.values, function (err, result) {
                    if (err) return reject(err);
                    resolve(result);
                })
            } catch (error) {
                reject(error);
            }
        })
    }
}

module.exports = Query;