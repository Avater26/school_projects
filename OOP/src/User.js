const Query = require("./Query");
const bcrypt = require("bcryptjs");
const {
    extrapolate,
    encryptPassword
} = require('../helper');

class User extends Query {
    constructor(data) {
        super();
        this.table = "users";
        if (data) {

            if (data.hasOwnProperty("password")) {
                data.password = encryptPassword(data.password)
            }
            this.data = data;
        }
    }
    async hasValidPassword(password) {
        const user = await this.exec();
        return bcrypt.compareSync(password, user[0].password)

    }
    findAndUpdate(kriterier, data) {
        if (data.hasOwnProperty("password")) {
            data.password = encryptPassword(data.password)
        }
        const kriterierObject = extrapolate(kriterier);
        const dataObjects = extrapolate(data);
        this.SQL = `UPDATE ${this.table} SET ${dataObjects.keys.join(', ')} WHERE ${kriterierObject.keys.join(' AND ')}`;
        this.values = [...dataObjects.values, ...kriterierObject.values];
        return this;
    }
    findOneAndUpdate(kriterier, data) {
        if (data.hasOwnProperty("password")) {
            data.password = encryptPassword(data.password)
        }
        const kriterierObject = extrapolate(kriterier);
        const dataObjects = extrapolate(data);
        this.SQL = `UPDATE ${this.table} SET ${dataObjects.keys.join(', ')} WHERE ${kriterierObject.keys.join(' AND ')} LIMIT 1`;
        this.values = [...dataObjects.values, ...kriterierObject.values];
        return this;
    }
    findByIdAndUpdate(id, data) {
        if (data.hasOwnProperty("password")) {
            data.password = encryptPassword(data.password)
        }
        const dataObjects = extrapolate(data);
        this.SQL = `UPDATE ${this.table} SET ${dataObjects.keys.join(', ')} WHERE id =${id}`;
        this.values = dataObjects.values;
        return this;
    }
    save() {
        const user = this.create(this.data).exec();
        return user;

    }
}
module.exports = User;