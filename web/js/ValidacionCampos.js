/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

window.addEventListener('load', function (){
document.getElementById('btnI').addEventListener('click', function (){
 var nombre = document.getElementById('User').value;
  if(nombre == ""){
    alert("El campo de usuario esta vacio");
    return false;
}
});
});
 

 
    

