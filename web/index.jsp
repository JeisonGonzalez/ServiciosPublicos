
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Servicios publicos</title>
  
 <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">

</head>

<body>

<!-- Side Navigation -->
<nav class="w3-sidebar w3-bar-block w3-card-2 w3-animate-left w3-center" style="display:none" id="mySidebar">
  <h1 class="w3-xxxlarge w3-text-theme">Side Navigation</h1>
  <button class="w3-bar-item w3-button" onclick="w3_close()">Close <i class="fa fa-remove"></i></button>
  <a href="ciclos_consumo.jsp" class="w3-bar-item w3-button">Ciclos de consumo</a>
  <a href="#" class="w3-bar-item w3-button">Link 2</a>
  <a href="#" class="w3-bar-item w3-button">Link 3</a>
  <a href="#" class="w3-bar-item w3-button">Link 4</a>
</nav>


<!-- Header -->
<header class="w3-container w3-teal w3-padding" id="myHeader">
 <i onclick="w3_open()" class="fa fa-bars w3-xlarge w3-button w3-teal"></i>
  <div class="w3-center">
  <div class="w3-padding-25" style="text-align: right;">
    <button class="w3-btn w3-theme-dark w3-hover-teal" onclick="document.getElementById('register').style.display='block'">Registrar operador</button>
    <button class="w3-btn w3-theme-dark w3-hover-teal" onclick="document.getElementById('logout').style.display='block'">Cerrar sesion</button>
  </div>
  <h1 class="w3-xxxlarge w3-animate-bottom">SERVICIOS PUBLICOS</h1>
  </div>
</header>

<!-- Modal registrarse-->
<div id="register" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-top">
    <header class="w3-container w3-theme-l1"> 
      <span onclick="document.getElementById('register').style.display='none'"
      class="w3-button w3-display-topright">×</span>
      <h2>Registrarse</h2>
    </header>
    <div class="w3-padding">
      <form>
        <div class="w3-section">      
          <input class="w3-input" type="text" required>
          <label>Usuario</label>
        </div>
        <div class="w3-section">      
          <input class="w3-input" type="text" required>
          <label>Contraseña</label>
        </div>
        <div class="w3-section">      
          <input class="w3-input" type="text" required>
          <label>Confirmar contraseña</label>
        </div>
        <br>  
        <div class="w3-section">
          <button class="w3-btn w3-theme w3-block" style="size: 500;">Registrarse</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal cerrar sesion-->
<div id="logout" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-top">
    <header class="w3-container w3-theme-l1"> 
      <span onclick="document.getElementById('logout').style.display='none'"
      class="w3-button w3-display-topright">×</span>
      <h2>Cerrar sesion</h2>
    </header>
    <div class="w3-padding">
      <p>¿Relamente desea cerrar la sesion?</p>
      <form>
        <br>  
        <div class="w3-section">
          <button class="w3-btn w3-theme w3-block" style="size: 500;">Aceptar</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!--Menu formularios-->
<div class="w3-row-padding w3-center w3-margin-top">
<div class="w3-third">
  <div class="w3-card-2 w3-container" style="min-height:460px">
  <h2>Hogares</h2><br>
  <i class="fa fa-desktop w3-margin-bottom w3-text-theme" style="font-size:120px"></i>
  <p>Organiza los datos de los hogares en el sistema</p>
  <br><br><br><br><br>
  <a href="./hogares.html"><button class="w3-btn w3-theme">Entrar</button></a>
  </div>
</div>

<div class="w3-third">
  <div class="w3-card-2 w3-container" style="min-height:460px">
  <h2>Consumos</h2><br>
  <i class="fa fa-css3 w3-margin-bottom w3-text-theme" style="font-size:120px"></i>
  <p>Registra el valor de los consumos del hogar</p>
  <br><br><br><br><br>
  <a href=""><button class="w3-btn w3-theme">Entrar</button></a>
  </div>
</div>

<div class="w3-third">
  <div class="w3-card-2 w3-container" style="min-height:460px">
  <h2>Subsidios</h2><br>
  <i class="fa fa-diamond w3-margin-bottom w3-text-theme" style="font-size:120px"></i>
  <p>Calcula si un hogar puede reclamar el beneficio</p>
  <br><br><br><br><br>
  <a href="Subsidies.jsp"><button class="w3-btn w3-theme">Entrar</button></a>
  </div>
</div>

<div class="w3-third">
  <div class="w3-card-2 w3-container" style="min-height:460px">
  <h2>Informes</h2><br>
  <i class="fa fa-diamond w3-margin-bottom w3-text-theme" style="font-size:120px"></i>
  <p>Visualiza informes con la informacion de los hogares</p>
  <br><br><br><br><br>
  <button class="w3-btn w3-theme" onclick="document.getElementById('reports').style.display='block'" style="font-weight:900;">Generar reporte</button>
<div id="reports" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-top">
    <header class="w3-container w3-theme-l1"> 
      <span onclick="document.getElementById('reports').style.display='none'"
      class="w3-button w3-display-topright">×</span>
      <h2>Informe de Hogares</h2>
    </header>
    <div class="w3-padding">
      <form>
        <div class="w3-section">
          <div class="w3-section w3-half">      
            <input class="w3-input" type="date" id="start_date" style="width: 70% " required>
            <label>Desde</label>
          </div>
          <div class="w3-section w3-half">      
              <input class="w3-input" type="date" id="end_date" style="width: 70%; center" required>
            <label>Hasta</label>
          </div>
        </div>
        <div class="w3-section">
          <button class="w3-btn w3-theme w3-block" style="size: 500;">Generar</button>
        </div>
          <table border=1 class="w3-table w3-striped w3-bordered">
        <thead>
            <tr class="w3-theme">
                <th>HOGAR</th>
                <th>CICLO</th>
                <th>AGUA</th>
                <th>ELECTRICIDAD</th>
                <th>GAS</th>
                <th>VAL AGUA</th>
                <th>VAL ELECT</th>
                <th>VAL GAS</th>
                <th>TOTAL AGUA</th>
                <th>TOTAL ELECT</th>
                <th>TOTAL GAS</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            <td>prueba</td>
            </tr>
        </tbody>
        </table>
      </form>
    </div>
  </div>
</div>
  
  </div>
</div>
    
    

   <script src="js/index.js"></script>   
</body>
</html>