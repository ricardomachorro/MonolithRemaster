<%-- 
    Document   : Examen
    Created on : 08-nov-2017, 23:12:47
    Author     : Ricardo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*;"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    String Usuario = sesion.getAttribute("usuario").toString();
    String Password = sesion.getAttribute("password").toString();
%>
<html>
    <head>
        <title>Examenes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/examenstyle.css" rel="stylesheet" type="text/css">
        <link href="Css/BarraDeInicioSesion.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.validate.js"></script>
        <script src="js/validacionexamen.js"></script>

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light  BarraDeInicio">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="true" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand"><img src="img/pawn.svg" id="LogoBarraInicio"></a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="NewInicio.jsp" ><img src="img/home (1).svg" class="ImagenesBarraInicio" >Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"  href="Actividades.jsp"><img src="img/signing-the-contract.svg" class="ImagenesBarraInicio" >Actividades</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"  href="Examen.jsp"><img src="img/exam.svg" class="ImagenesBarraInicio" >Examenes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Proyectos.html" ><img src="img/group-button.svg" class="ImagenesBarraInicio" >Proyectos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Finanzas.jsp" ><img src="img/money-bag-with-dollar-symbol.svg" class="ImagenesBarraInicio" >Finanzas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Rutas.jsp" ><img src="img/international-delivery.svg" class="ImagenesBarraInicio" >Rutas</a>
                    </li>

                </ul>
                <ul class="navbar-nav mr-left mt-2 mt-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            <img src="img/user.svg" class="ImagenesBarraInicio" > Usuario
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" style="align-content:center;">
                            <a class="dropdown-item" href="CerrarSesion.jsp"><img src="img/enter.svg" class="ImagenesBarraInicio" > Cerrar Sesion</a>
                            <a class="dropdown-item" href="Configuracion.jsp"><img src="img/settings-work-tool.svg" class="ImagenesBarraInicio" >
                                Configuracion</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid" style="padding-left:13px;padding-right:13px;">

            <!--Inicio Cartas de Actividades-->
            <!---TIuloModulo-->
            <div class="row" style="padding-top:125px;">
                <div class="titulolista col-12 ">
                    <h2 align="center">Lista Examenes</h2>
                </div>
            </div>
            <!---Fin TituloModulo-->
            <!--Ejemplo Cartas-->

            <!--inico Carta Nueva Actividad-->
            <div class="col-12 cartasdiv " style="margin-bottom:13px;">
                <div class="card-columns ">
                    <div class="card carta" >
                        <h3 class="cart-title titulocarta">Nuevo Examen</h3>
                        <div class="card-block bloquecarta">
                            <p class="card-text">Nuevo Examen </p>
                            <div class="btn-group grupo-btn">
                                <button class="btn btn-block btn-primary" id="agregar"  data-toggle="modal" data-target="#exampleModal" >Nuevo Examen</button>
                            </div>
                        </div>
                    </div>
                    <!--Fin Carta Nueva Actividad-->

                    <!--Inicio Modal Nueva Actividad-->
                    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" align="center" style="text-align:center" id="exampleModalLabel">Nuevo Examen</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body actividadformcont"  >
                                    <form  class="examenform" id="examenform" style="width:100%;" method="post" action="IngresoExamen"  >
                                        <div class="row targetactividad"  style="width:100%;">
                                            <div class="col-6 col-sm-auto" style="width:100%;">
                                                <label  class="col-form-label">Nombre actividad</label>
                                            </div>
                                            <div class="col-6  col-sm-auto" style="width:100%;">
                                                <input type="text" class="form-control" id="Titulo" placeholder="Nombre Examen" name="Titulo">
                                            </div>  
                                        </div> 
                                        <div class="row targetactividad" style="width:100%;">
                                            <div class="col-6 col-sm-auto" style="width:100%;">
                                                <label  class="col-form-label">Forma de Entrega</label>
                                            </div>
                                            <div class="col-6  col-sm-auto" style="width:100%;">
                                                <input type="text" class="form-control" id="FormaEntrega" placeholder="Forma de Entrega"  name="FormaEntrega">
                                            </div>
                                        </div> 
                                        <div class="row targetactividad" style="width:100%;" >
                                            <div class="col-12 targetactividadfecha">
                                                <label  class='col-form-label'>Fecha de Entrega</label>
                                                <input type="date" id="FechaEntrega" class="col-12" name="FechaEntrega"> 
                                            </div>
                                        </div>
                                        <div class="row descripcionproyecto">
                                            <label for="message-text" class="form-control-label descripcionproyecto">Descripcion:</label>
                                            <textarea class="form-control descripcionproyecto" id="Descripcion" name="Descripcion"></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-5">
                                            </div>
                                            <div class="col-4">
                                                <button class="btn btn-primary">Guardar Examen</button>
                                            </div>
                                            <div class="col-3">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Fin Modal Nueva Actividad-->


                    <!--Fin del Modal de Registro Actividad-->
                    <%
                        Connection con = null;
                        Statement sta = null;
                        ResultSet r = null;
                        try {
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                            sta = con.createStatement();
                            r = sta.executeQuery("select * from Examen inner join usuario on examen.IDUsuario=usuario.IDUsuario where usuario.NombreUsuario='" + Usuario + "';");
                            while (r.next()) {

                                if (r.getString("Estado").equalsIgnoreCase("No finalizada")) {
                                    /*Cartas de Examenes */
                                    out.println(" <div class=\"card carta\" >");
                                    out.println("<div class=\"\">");
                                    out.println("<h3 class=\"cart-title titulocarta\">" + r.getString("Titulo") + "</h3>");
                                    out.println("</div>");
                                    out.println(" <div class=\"card-body bloquecarta\">");
                                    out.println("<div class=\"container\">");
                                    out.println("<div id=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">");
                                    out.println("<div class=\"card\">");
                                    out.println("<div class='card-header' role='tab' id='" + r.getInt("IDExamen") + r.getString("Titulo") + r.getInt("IDExamen") + "'>");
                                    out.println("<div class='card-header' role='tab' id='" + r.getInt("IDExamen") + r.getString("Titulo") + r.getInt("IDExamen") + "'>");
                                    out.println("<h5 class='mb-0'>");
                                    out.println("<input type='hidden' name='IdentificadorBorrar' id='price' value='" + r.getInt("IDExamen") + "'>");
                                    out.println("<a class='collapsed' data-toggle='collapse' data-parent='#accordion' href='#" + r.getInt("IDExamen") + "-" + r.getInt("IDExamen") + "' aria-expanded='false' aria-controls='" + r.getInt("IDExamen") + "'>");
                                    out.println("Descripcion");
                                    out.println(" </a>");
                                    out.println("</h5>");
                                    out.println("</div>");
                                    out.println("<div id='" + r.getInt("IDExamen") + "-" + r.getInt("IDExamen") + "' class='collapse' role='tabpanel' aria-labelledby='" + r.getString("Titulo") + r.getInt("IDExamen") + "'>");
                                    out.println("<div class='card-block'>");
                                    out.println(r.getString("Descripcion"));
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println(" <div class='btn-group grupo-btn'>");
                                    out.println(" <button class='btn btn-primary' id='nochecar'data-toggle='modal' data-target='#" + r.getInt("IDExamen") + "Cambiar'>Final</button>");
                                    out.println("<button class='btn btn-primary' id='editar' data-toggle='modal' data-target='#" + r.getInt("IDExamen") + "'>Editar</button>");
                                    out.println("<button class='btn btn-primary' id='borrar' data-toggle='modal' data-target='#" + r.getInt("IDExamen") + "Borrar'>Borrar</button>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    /*Final de Examenes no hechos*/

                                    //Modal  Examen No Finalizado /*
                                    out.println("<div class='modal fade bd-example-modal-lg'  id='" + r.getInt("IDExamen") + "Cambiar' tabindex='-1' role='dialog' aria-labelledby='myLargeModalLabel' aria-hidden='true'>");
                                    out.println("<div class='modal-dialog modal-lg'>");
                                    out.println("<div class='modal-content'>");
                                    out.println("<div class='modal-header'>");
                                    out.println("<h5 class='modal-title' align='center' style='text-align:center'>Seguro que quieres marcar el Examen " + r.getString("Titulo") + " como aplicado</h5>");
                                    out.println("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                                    out.println("<span aria-hidden='true'>&times;</span>");
                                    out.println("</button>");
                                    out.println("</div>");
                                    out.println("<div class='modal-body actividadformcont'>");
                                    out.println("<form  class='actividadform' style='width:100%;' method='post' action='MarcarExamenFinalizado' >");
                                    out.println("<div class='row targetactividad'  style='width:100%;'>");;
                                    out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                    out.println("<label  class='col-form-label'>El Examen " + r.getString("Titulo") + " se cambiara de estado en el sistema</label>");
                                    out.println(" <input type='hidden' name='IdentificadorCambio' id='price' value='" + r.getInt("IDExamen") + "'>");
                                    out.println("</div>");
                                    out.println("<div class='row ' style='width:100%;'>");
                                    out.println("<div class='col-12'>");
                                    out.println("<div class='row' >");
                                    out.println("<div class='col-6' style='text-align:right;'> ");
                                    out.println("<button type='button'  class='btn btn-primary' data-dismiss='modal' aria-label='Close'>Cancelar</button>");
                                    out.println("</div>");
                                    out.println("<div class='col-6'>");
                                    out.println("<button type='sumbit'  class='btn btn-primary '>Aceptar</button>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</form>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println(" </div>");
                                    out.println(" </div>");
                                    // Fin Modal  Examen No Finalizado /*
                                } else {
                                    /*Cartas de Examenes */
                                    out.println(" <div class=\"card carta\" >");
                                    out.println("<div class=\"\">");
                                    out.println("<h3 class=\"cart-title titulocarta\">" + r.getString("Titulo") + "</h3>");
                                    out.println("</div>");
                                    out.println(" <div class=\"card-body bloquecarta\">");
                                    out.println("<div class=\"container\">");
                                    out.println("<div id=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">");
                                    out.println("<div class=\"card\">");
                                    out.println("<div class='card-header' role='tab' id='" + r.getInt("IDExamen") + r.getString("Titulo") + r.getInt("IDExamen") + "'>");
                                    out.println("<div class='card-header' role='tab' id='" + r.getInt("IDExamen") + r.getString("Titulo") + r.getInt("IDExamen") + "'>");
                                    out.println("<h5 class='mb-0'>");
                                    out.println("<input type='hidden' name='IdentificadorBorrar' id='price' value='" + r.getInt("IDExamen") + "'>");
                                    out.println("<a class='collapsed' data-toggle='collapse' data-parent='#accordion' href='#" + r.getInt("IDExamen") + "-" + r.getInt("IDExamen") + "' aria-expanded='false' aria-controls='" + r.getInt("IDExamen") + "'>");
                                    out.println("Descripcion");
                                    out.println(" </a>");
                                    out.println("</h5>");
                                    out.println("</div>");
                                    out.println("<div id='" + r.getInt("IDExamen") + "-" + r.getInt("IDExamen") + "' class='collapse' role='tabpanel' aria-labelledby='" + r.getString("Titulo") + r.getInt("IDExamen") + "'>");
                                    out.println("<div class='card-block'>");
                                    out.println(r.getString("Descripcion"));
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println(" <div class='btn-group grupo-btn'>");
                                    out.println(" <button class='btn btn-primary' id='checar'data-toggle='modal' data-target='#" + r.getInt("IDExamen") + "Final'>Final</button>");
                                    out.println("<button class='btn btn-primary' id='editar' data-toggle='modal' data-target='#" + r.getInt("IDExamen") + "'>Editar</button>");
                                    out.println("<button class='btn btn-primary' id='borrar' data-toggle='modal' data-target='#" + r.getInt("IDExamen") + "Borrar'>Borrar</button>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    /*Final de Examenes ya hechos*/

                                    //Modal  Modal Finalizado /*
                                    out.println("<div class='modal fade bd-example-modal-lg'  id='" + r.getInt("IDExamen") + "Cambiar' tabindex='-1' role='dialog' aria-labelledby='myLargeModalLabel' aria-hidden='true'>");
                                    out.println("<div class='modal-dialog modal-lg'>");
                                    out.println("<div class='modal-content'>");
                                    out.println("<div class='modal-header'>");
                                    out.println("<h5 class='modal-title' align='center' style='text-align:center'>Seguro que quieres marcar la Actividad " + r.getString("Titulo") + " como no finalizada</h5>");
                                    out.println("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                                    out.println("<span aria-hidden='true'>&times;</span>");
                                    out.println("</button>");
                                    out.println("</div>");
                                    out.println("<div class='modal-body actividadformcont'>");
                                    out.println("<form  class='actividadform' style='width:100%;' method='post' action='MarcarExamenNoFinalizado' >");
                                    out.println("<div class='row targetactividad'  style='width:100%;'>");;
                                    out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                    out.println("<label  class='col-form-label'>El Examen " + r.getString("Titulo") + " se cambiara de estado en el sistema</label>");
                                    out.println(" <input type='hidden' name='IdentificadorCambio' id='price' value='" + r.getInt("IDExamen") + "'>");
                                    out.println("</div>");
                                    out.println("<div class='row ' style='width:100%;'>");
                                    out.println("<div class='col-12'>");
                                    out.println("<div class='row' >");
                                    out.println("<div class='col-6' style='text-align:right;'> ");
                                    out.println("<button type='button'  class='btn btn-primary' data-dismiss='modal' aria-label='Close'>Cancelar</button>");
                                    out.println("</div>");
                                    out.println("<div class='col-6'>");
                                    out.println("<button type='sumbit'  class='btn btn-primary '>Aceptar</button>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</form>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println(" </div>");
                                    out.println(" </div>");
                                    // Fin ModalExamen Finalizado /*
                                }

                                //Modal de Examen ya hecho/*
                                out.println("<div class='modal fade bd-example-modal-lg'  id='" + r.getInt("IDExamen") + "' tabindex='-1' role='dialog' aria-labelledby='myLargeModalLabel' aria-hidden='true'>");
                                out.println("<div class='modal-dialog modal-lg'>");
                                out.println("<div class='modal-content'>");
                                out.println("<div class='modal-header'>");
                                out.println("<h5 class='modal-title' align='center' style='text-align:center'  id='" + r.getInt("IDExamen") + "'>" + r.getString("Titulo") + "</h5>");
                                out.println("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                                out.println("<span aria-hidden='true'>&times;</span>");
                                out.println("</button>");
                                out.println("</div>");
                                out.println("<div class='modal-body actividadformcont'>");
                                out.println("<form  class='examenform' style='width:100%;' method='post' action='CambioExamen' >");
                                out.println("<div class='row targetactividad'  style='width:100%;'>");;
                                out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                out.println("<label  class='col-form-label' name='Identificador' value='" + r.getInt("IDExamen") + "'>Nombre Examen</label>");
                                out.println(" <input type='hidden' name='Identificador' id='price' value='" + r.getInt("IDExamen") + "'>");
                                out.println("</div>");
                                out.println("<div class='col-6  col-sm-auto' style='width:100%;'>");
                                out.println("<input type='text' class='form-control' id='Titulo' placeholder='Nombre Examen' name='Titulo' value='" + r.getString("Titulo") + "'>");
                                out.println("</div>");
                                out.println(" </div>");
                                out.println("<div class='row targetactividad' style='width:100%;'>");
                                out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                out.println("<label  class='col-form-label'>Forma de Entrega</label>");
                                out.println("</div>");
                                out.println("<div class='col-6  col-sm-auto' style='width:100%;'>");
                                out.println("<input type='text'  class='form-control' id='FormaEntrega' placeholder='Forma de Entrega'  name='FormaEntrega' value='" + r.getString("FormaDeEntregar") + "'>");
                                out.println(" </div>");
                                out.println("</div>");

                                out.println("<div class='row targetactividad' style='width:100%;' >");
                                out.println("<div class='col-12 targetactividadfecha'>");
                                out.println("<label  class='col-form-label'>Fecha de Entrega</label>");
                                out.println("<input type='date'  class='col-12' name='FechaEntrega' id='FechaEntrega' value='" + r.getString("FechaLimite") + "'> ");
                                out.println("</div>");
                                out.println("</div>");

                                out.println("<div class='row descripcionproyecto'>");
                                out.println("<label for='message-text' class='form-control-label descripcionproyecto'>Descripcion:</label>");
                                out.println("<textarea class='form-control descripcionproyecto' id='Descripcion' name='Descripcion'>" + r.getString("Descripcion") + "</textarea>");
                                out.println("</div>");
                                out.println("<div class='row'>");
                                out.println("<div class='col-5'>");
                                out.println("</div>");
                                out.println("<div class='col-4'>");
                                out.println("<button class='btn btn-primary'>Guardar Cambios</button>");
                                out.println("</div>");
                                out.println("<div class='col-3'>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println(" </div>");
                                out.println(" </div>");
                                /*Fin Modal Examen ya hechas*/

                                //Modal Elimina Examen /*
                                out.println("<div class='modal fade bd-example-modal-lg'  id='" + r.getInt("IDExamen") + "Borrar' tabindex='-1' role='dialog' aria-labelledby='myLargeModalLabel' aria-hidden='true'>");
                                out.println("<div class='modal-dialog modal-lg'>");
                                out.println("<div class='modal-content'>");
                                out.println("<div class='modal-header'>");
                                out.println("<h5 class='modal-title' align='center' style='text-align:center'>Seguro que quieres borrar el Examen :" + r.getString("Titulo") + "</h5>");
                                out.println("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                                out.println("<span aria-hidden='true'>&times;</span>");
                                out.println("</button>");
                                out.println("</div>");
                                out.println("<div class='modal-body actividadformcont'>");
                                out.println("<form  class='actividadform' style='width:100%;' method='post' action='EliminarExamen' >");
                                out.println("<div class='row targetactividad'  style='width:100%;'>");;
                                out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                out.println("<label  class='col-form-label'>EL Examen:" + r.getString("Titulo") + " se borra permenentemente del sistema</label>");
                                out.println(" <input type='hidden' name='IdentificadorBorrar' id='price' value='" + r.getInt("IDExamen") + "'>");
                                out.println("</div>");
                                out.println("<div class='row ' style='width:100%;'>");
                                out.println("<div class='col-12'>");
                                out.println("<div class='row' >");
                                out.println("<div class='col-6' style='text-align:right;'> ");
                                out.println("<button type='button'  class='btn btn-primary' data-dismiss='modal' aria-label='Close'>Cancelar</button>");
                                out.println("</div>");
                                out.println("<div class='col-6'>");
                                out.println("<button type='sumbit'  class='btn btn-primary '>Aceptar</button>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println(" </div>");
                                out.println(" </div>");

                                // Fin Modal Elimina Examen /*
                            }
                        } catch (SQLException error) {
                            out.print(error.toString());
                        }
                        //////////////////////////////////////////////////////////////
%>

                </div>
            </div> 
        </div>
    </body>
</html>