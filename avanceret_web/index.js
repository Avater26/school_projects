// Callback

// function lazy(text, callback) {
//     if (typeof text != "string") return callback("Text must be a string");
//     setTimeout(() => callback(null, text), 3000);
// }

// lazy("Hello World", function (error, text) {
//     if (error) return console.log(error);
//     console.log(text);
// })


// Promises

// function lazy(text) {
//     return new Promise(function (resolve, reject) {
//         if (typeof text != "string") return reject("Text must be a string");
//         setTimeout(() => resolve(text), 3000);
//     })
// }

// lazy(42)
//     .then(response => console.log(response))
//     .catch(error => console.error(error))


// async/await

// function lazy(text) {
//     return new Promise(function (resolve, reject) {
//         if (typeof text != "string") return reject("Text must be a string");
//         setTimeout(() => resolve(text), 3000);
//     })
// }

// (async function () {
//     try {

//         const response = await lazy(1);
//         console.log(response);
//     } catch (error) {
//         console.error(error);
//     }

// })();

const {
    updateUser
} = require('./my-module');

// getAllUsers()
//     .then(response => console.log(response))
//     .catch(error => console.error(error))

// getSingleUser(7)
//     .then(response => console.table(response))
//     .catch(error => console.error(error))

(async function () {
    try {
        const user = await updateUser(10, {
            username: "testing single"
        });
        console.table(user);
    } catch (error) {
        console.error(error)
    }
})();