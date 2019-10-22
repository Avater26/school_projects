const Query = require('./src/Query');
const User = require('./src/User');

/* const test = new Query("users")
    // .create({
    //     username: "Ash",
    //     password: "isuck"
    // })
    .findByIdAndDelete(6)
    .exec()
    .then(response => console.log(response)) */

/* const test = new User({
        username: "hej",
        password: "there"
    })
    .save()
    .then(response => console.log(response)); */

const test = new User()
.findAndUpdate({username:"hej"},{password:"test"})
.exec()
.then(response => console.log(response));

// const test = new User()
//     .find({
//         username: "hej"
//     })
// test.hasValidPassword("1234")

//     .then(response => console.log(response));