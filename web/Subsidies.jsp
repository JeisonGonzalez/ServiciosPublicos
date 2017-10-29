<%-- 
    Document   : Subsidies
    Created on : Oct 17, 2017, 6:30:20 PM
    Author     : Lizy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Servicios publicos</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <body>
        <!-- Header -->
        <header class="w3-container w3-teal w3-padding" id="myHeader">
            <button class="w3-btn w3-xlarge w3-theme-dark w3-hover-teal">
                <a href="index.jsp" class="hoverable"><img src="imagenes/back.png" class="hoverable"></a>
            </button>
            <div class="w3-center">
                <div class="w3-padding-25" style="text-align: right;"></div>
                <h4>SERVICIOS PÚBLICOS</h4>
                <h1 class="w3-xxxlarge w3-animate-bottom">GESTIÓN DE SUBSIDIOS</h1>
                <div class="w3-padding-32">
                    <a class="w3-btn w3-xlarge w3-theme-dark w3-hover-teal" href="#calculate" style="font-weight:900;">GESTIONAR</a>
                </div>
            </div>
        </header>

        <div id="calculate" class="col-xs-12" style="padding: 20px 15px;">
            <header>
                <h2>Calcular subsidios</h2>
            </header>
            <div class="w3-padding">
                <form action="./SubsidiosServlet" method="post">
                    <div class="form-group">
                        <label for="ejemplo_email_3" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <input type="email" class="form-control" id="ejemplo_email_3"
                                   placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ejemplo_password_3" class="col-lg-2 control-label">Contraseña</label>
                        <div class="col-lg-10">
                            <input type="password" class="form-control" id="ejemplo_password_3" 
                                   placeholder="Contraseña">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> No cerrar sesión
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button type="submit" class="btn btn-default">Entrar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>

<script>
    < script src = "https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity = "sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin = "anonymous" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</script>