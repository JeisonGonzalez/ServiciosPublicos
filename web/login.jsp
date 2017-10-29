<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  
  <head>
 <script src="js/valogin.js" ></script>
 <link rel="stylesheet" href="css/bootstrap.min.css"type="text/css"></link>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"type="text/css"> </link><!--Iconos--> 
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,500" rel="stylesheet"></link>
    <link rel="stylesheet" href="css/custom.css"type="text/css"></link>
   
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>

  </head>

  
  <body>
    <div class="my-content" >
        <div class="container" > 
            <div class="row">
                  <div class="col-sm-6 col-sm-offset-3 myform-cont" >
                      <div class="myform-top">
                       <img src="imagenes/userP.png" alt="Avatar" class="avatar">    
                       <div class="myform-top-left">
                            <h3>Iniciar sesión</h3>
                          </div>
                      </div>
                      <div class="myform-bottom">
                          <form action="Iniciar" method="post" class="" id="formInicio" >
                          <div class="form-group">
                              <input type="text" name="form-username" placeholder="Usuario..." class="form-control" id="User">
                          </div>
                          <div class="form-group">
                              <input type="password" name="form-password" placeholder="Contraseña..." class="form-control" id="Pass">
                          </div>
                              <button type="submit" class="mybtn" name="btnI" id="btnI">Entrar</button>
                        </form>
                       
                      </div>
                  </div>
            </div>
          
            </div>

        </div>
    </div>

  </body>

</html>