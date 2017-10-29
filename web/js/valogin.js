/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//SELECCION DEL FORMULARIO

//Conociendo el id
var formulario = document.getElementById("formInicio");
var formulario2 = document.forms["formInicio"];

//Conociendo el número de formulario que es en la página
var formulario3 = document.getElementsByTagName("form")[0];
var formulario4 = document.forms[0];

//SELECCIONAR ELEMENTOS DE UN FORMULARIO
//.elements[] Devuelve un array con todos los input del formulario
//getElementById("idElemento") Devuelve un elemento con un id determinado
//getElementsByTagName("etiqueta") Devuelve un array con elementos de un tipo de etiqueta (input, select, etc.)
//getElementsByName("nombre") Devuelve un array con elementos que tienen el mismo nombre (por ejemplo, radiobutton).

window.onload = iniciar; //Sin paréntesis

function iniciar() {
    document.getElementById("btnI").addEventListener('click', validar, false);
}

function validaNombre() {
    var elemento = document.getElementById("User");
    if (elemento.value == "") {
        alert("Por favor ingrese su nombre de usuario");
        return false;
    }
    return true;
}

function validaContra() {
    var elemento = document.getElementById("Pass");
    if (elemento.value == "") {
        alert("Por favor ingrese su contraseña");
        return false;
    }
    return true;
}

function validar(e) {
    if (validaNombre() && validaContra()) {
        return true;
    } else {
        e.preventDefault();
        return false;
    }
}


