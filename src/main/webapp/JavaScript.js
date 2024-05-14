function checkPassword(){
    if(document.getElementById("pwd").value!=document.getElementById("confirmpwd").value){
        alert("password isn't match");
        return false;
    }
    else{
        alert("success");
        return true;
    }
}
