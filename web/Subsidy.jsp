<%-- 
    Document   : Subsidy
    Created on : 5/11/2017, 01:09:03 PM
    Author     : Jeison
--%>


<%@page import="java.util.List"%>
<%@page import="Entidades.EntSubsidies"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<EntSubsidies> list = (List<EntSubsidies>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form action="./SubsidiosServlet" method="post">
            <%if (list != null && !list.isEmpty()) {%> 
            <div class="col-lg-6 col-sm-offset-3">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRE</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (EntSubsidies subsidy : list) {%>
                            <tr onclick="cargarFormulario('<%=subsidy.getIdSybsudy()%>','<%=subsidy.getName()%>','<%=subsidy.getDescription()%>','<%=subsidy.getStartDate()%>','<%=subsidy.getEndDate()%>','<%=subsidy.getExpectedWaterValue()%>','<%=subsidy.getExpectedNaturalGasValue()%>','<%=subsidy.getExpectedEnergyValue()%>')">
                                <td><%=subsidy.getIdSybsudy()%></td>
                                <td><%=subsidy.getName()%></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
            <%} else {%>
            NO SE ENCONTRARON REGISTROS PARA MOSTRAR
            <%}%>


            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary btn-lg"  onclick="cargarFormulario('','','','','','','','','');">
                Nuevo
            </button>

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true">×</span>
                                <span class="sr-only">Close</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">Subsidio</h4>
                        </div>

                        <!-- Modal Body -->
                        <div class="modal-body">
                            <p class="statusMsg"></p>

                            <div class="form-group">
                                <label for="idSybsudy">Código de subsidio : </label>
                                <input name="idSybsudy" type="number" class="form-control" id="idSybsudy" readonly />
                            </div>
                            <div class="form-group">
                                <label for="name">Nombre : </label>
                                <input name="name" class="form-control" type="text" id="name"/>
                            </div>
                            <div class="form-group">
                                <label for="description" >Descripción : </label>
                                <textarea class="form-control"  name="description" id="description"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="startDate">Fecha de inicio : </label>
                                <input name="startDate" type="date" class="form-control" id="startDate"/>
                            </div>
                            <div class="form-group">
                                <label for="endDate">Fecha fin : </label>
                                <input name="endDate" type="date" class="form-control" id="endDate"/>
                            </div>
                            <div class="form-group">
                                <label for="expectedNaturalGasValue">Consumo de gas aplicable : </label>
                                <input name="expectedNaturalGasValue" type="number" class="form-control" id="expectedNaturalGasValue"/>
                            </div>
                            <div class="form-group">
                                <label for="expectedWaterValue">Consumo de agua aplicable : </label>
                                <input name="expectedWaterValue" type="number" class="form-control" id="expectedWaterValue"/>
                            </div>
                            <div class="form-group">
                                <label for="expectedEnergyValue">Consumo eléctrico aplicable : </label>
                                <input name="expectedEnergyValue" type="number" class="form-control" id="expectedEnergyValue"/>
                            </div>
                        </div>

                        <!-- Modal Footer -->
                        <div class="modal-footer">
                            <button type="submit" name="action" value="Guardar" class="btn btn-sm btn-primary">Guardar</button>
                            <button type="submit" name="action" value="Borrar" class="btn btn-sm btn-danger">Borrar</button>
                            <button name="action" value="Borrar" class="btn btn-sm btn-warning" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
    <script src="js/Subsidy.js"></script>
</html>
