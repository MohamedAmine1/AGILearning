function test_nom() {
    var nom = document.getElementById("nom");
    if ((nom.value == "") || (isNaN(nom.value) == false)) {
        alert("nom invalide");
    nom.value = "";
    }
}
function test_prenom() {
    var prenom = document.getElementById("pre");
    if ((prenom.value == "") || (isNaN(prenom.value) == false)) {
        alert("prenom invalide");
    prenom.value = "";
    }
}
function test_user() {
    var user = document.getElementById("user");
    if ((user.value == "") || (isNaN(user.value) == false)) {
        alert("user invalide");
        user.value = "";
    }
}
function test_pwd() {
    var password = document.getElementById("pwd");
    if ((password.value == "") || (password.value.length < 8)) {
        alert("password invalide");
         password.value = "";
    }
}
function confirm_pwd() {
    var password1 = document.getElementById("pwd1");
    if (password1.value != password.value) {
        alert("vous devez saisir le même mot de passe");
         password1.value = "";
    }
}
function test_mail() {
    var mail = document.getElementById("mail");
    if ((mail.value == "") || (mail.value.indexOf("@")==-1)) {
        alert("e-mail invalide");
        mail.value = "";
    }	
}