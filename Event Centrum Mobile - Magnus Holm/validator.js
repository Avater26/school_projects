/*jslint browser, for*/

window.addEventListener("load", function () {
    'use strict';
    document.getElementById("form").onsubmit = Valider;
});

function Valider() {
    'use strict';
    var form = document.getElementById("form");
    var AntalFejl = 0;
    var FejlBeskedNavn = "";
    var FejlBeskedEmail = "";
    var FejlBeskedBesked = "";


    if (form.Navn.value === "") {
        AntalFejl += 1;
        FejlBeskedNavn = "Dit navn mangler";
    } else {
        var regexpnavn = /^[a-zA-ZÆØÅæøå]+[\s]*[a-zA-ZÆØÅæøå]*[\s]*[a-zA-ZÆØÅæøå]*$/;
        if (!regexpnavn.test(form.Navn.value)) {
            AntalFejl += 1;
            FejlBeskedNavn = "Navnet er ikke gyldig";
        }
    }
    if (form.Email.value === "") {
        AntalFejl += 1;
        FejlBeskedEmail = "Din mail mangler";
    } else {
        var regexpmail = /^[A-Za-zÆØÅæøå0-9_.]+[@]{1}[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
        if (!regexpmail.test(form.Email.value)) {
            AntalFejl += 1;
            FejlBeskedEmail = "Mailen er ikke gyldig";
        }
    }
    if (form.Besked.value === "") {
        AntalFejl += 1;
        FejlBeskedBesked = "Du har ikke skrevet en besked";
    }

    if (AntalFejl === 0) {
        alert("Tak for din besked");
        return true;
    } else {
        document.getElementById('fejlBeskedNavn').innerHTML = FejlBeskedNavn;
        document.getElementById('fejlBeskedEmail').innerHTML = FejlBeskedEmail;
        document.getElementById('fejlBeskedBesked').innerHTML = FejlBeskedBesked;
        return false;
    }
}