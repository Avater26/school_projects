let letters = `ABCDEFGHIJKLMNOPQRSTUVWXYZ`;
letters += letters;

function encrypt(string, key = 3) {
    let alteredString = string.toUpperCase();
    let encryptedString = '';
    for (let i in alteredString) {
        if (letters.indexOf(alteredString[i]) > -1) {
            let index = letters.indexOf(alteredString[i]) - key;
            encryptedString += letters.substr(index, 1);
        } else {
            encryptedString += alteredString[i];
        }
    }
    return encryptedString;
}

function decrypt(string, key = 3) {
    let alteredString = string.toUpperCase();
    let decryptedString = '';
    for (let i in alteredString) {
        if (letters.indexOf(alteredString[i]) > -1) {
            let index = letters.indexOf(alteredString[i]) + key;
            decryptedString += letters.substr(index, 1);
        } else {
            decryptedString += alteredString[i];
        }
    }
    return decryptedString;
}
// console.log(decrypt(`ALK'Q IBQ VLRO JBJBP YB AOBXJP`));