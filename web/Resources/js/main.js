/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function login(){
    let email = $("#exampleInputEmail1").val();
    let password = $("#exampleInputPassword1").val();
    $.ajax({
        url: "CreateSession",
        data: {
            Email: email,
            Password: password
        },
        type: "POST",
        dataType: "json",
        success: function(response) {
            if (response != false) {
                alert("Inició sesión con exito");
                location.href= location.protocol + '//' + location.host + "/LoginJSP/Screens/Home.jsp";
            } else {
                alert("Ocurrio un error");
            }
        },
        error: function(xhr, status) {
            alert("Disculpe, existió un problema");
        },
    });
}