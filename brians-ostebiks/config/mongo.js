const mongoose = require('mongoose');

module.exports = async function () {
    try {
        await mongoose.connect('mongodb://localhost/brians_ostebiks', {
            useNewUrlParser: true,
            useCreateIndex: true
        });
        console.info("MongoDB Connected");
    } catch (error) {
        console.error(error);

    }
};