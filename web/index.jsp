<%-- 
    Document   : Subsidies
    Created on : Oct 17, 2017, 6:30:20 PM
    Author     : Lizy
--%>

<%@page import="java.util.List"%>
<%@page import="Entidades.EntSubsidies"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<EntSubsidies> list = (List<EntSubsidies>) request.getAttribute("list");
%>
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
                    
                            <%if (list != null && !list.isEmpty()) {%> 
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th class="col-sm-1">ID</th>
                                                    <th class="col-sm-2">NOMBRE</th>
                                                    <th class="col-sm-2">DESCRIPCIÓN</th>
                                                    <th class="col-sm-2">AGUA</th>
                                                    <th class="col-sm-3">GAS</th>
                                                    <th class="col-sm-2">ELECTRICIDAD</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% for (EntSubsidies subsidy : list) {%>
                                                    <tr>
                                                        <td><%=subsidy.getIdSybsudy()%></td>
                                                        <td><%=subsidy.getIdSybsudy()%></td>
                                                        <td><%=subsidy.getIdSybsudy()%></td>
                                                        <td><%=subsidy.getIdSybsudy()%></td>
                                                        <td><%=subsidy.getIdSybsudy()%></td>
                                                        <td><%=subsidy.getIdSybsudy()%></td>
                                                    </tr>
                                                <%}%>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            <%}%>
                    
                    
                    
                    
                    
                    
                    
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="idSybsudy" class="col-xs-12 control-label">Código de subsidio : </label>
                        <input name="idSybsudy" class="form-control col-xs-12" id="idSybsudy">
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="name" class="col-xs-12 control-label">Nombre : </label>
                        <input name="name" class="form-control col-xs-12" id="name">
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="description" class="col-xs-12 control-label">Descripción : </label>
                        <input name="description" class="form-control col-xs-12" id="description">
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="startDate" class="col-xs-12 control-label">Fecha de inicio : </label>
                        <input name="startDate" class="form-control col-xs-12" id="startDate">
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="endDate" class="col-xs-12 control-label">Fecha fin : </label>
                        <input name="endDate" class="form-control col-xs-12" id="endDate">
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="expectedNaturalGasValue" class="col-xs-12 control-label">Consumo de gas aplicable : </label>
                        <input name="expectedNaturalGasValue" class="form-control col-xs-12" id="expectedNaturalGasValue">
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="expectedWaterValue" class="col-xs-12 control-label">Consumo de agua aplicable : </label>
                        <input name="expectedWaterValue" class="form-control col-xs-12" id="expectedWaterValue">
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="expectedEnergyValue" class="col-xs-12 control-label">Consumo eléctrico aplicable : </label>
                        <input name="expectedEnergyValue" class="form-control col-xs-12" id="expectedEnergyValue">
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-offset-3">
                        <label for="ejemplo_email_3" class="col-xs-12 control-label">Tipo : </label>
                        <div class="col-xs-12">
                            <div class="radio">
                                <label><input type="radio" id="type_1" checked name="type_1"> Option 1</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" id="type_2" name="type_2"> Option 2</label>
                            </div>
                        </div>
                    </div>
                            
                            
                    <jsp:include page="botones.jsp"  flush="false"></jsp:include>
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