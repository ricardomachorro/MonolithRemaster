<%-- 
    Document   : Proyectos
    Created on : 06-nov-2017, 20:12:39
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*;"%>
<!DOCTYPE html>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    String Usuario = sesion.getAttribute("usuario").toString();
    String Password = sesion.getAttribute("password").toString();

%>
<html>
    <head>
        <title>Proyectos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/proyectoscss.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css/BarraDeInicioSesion.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <script src="js/popper.min.js"></script>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/validacionactividades.js"></script>

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


            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="row ContenedoresListasColgantes">
                        <div class=" col-12 ">
                            <div class="row ListasColgantes">
                                <div class="col-12" >
                                    <h2 align="center">Tus Proyectos</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="row CartelNuevoProyecto">
                        <div class=" col-12 ">
                            <div class="row Cartel">
                                <div class="col-12" >
                                    <a>Nuevo proyecto<img class="float-right"  data-toggle="modal" data-target="#exampleModal" id="LogoNuevoProyecto" src="img/plus.svg"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" align="center" style="text-align:center" id="exampleModalLabel">Nuevo Proyecto</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body actividadformcont"  >
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="row ContenedoresListasColgantes">
                        <div class=" col-12 ">
                            <div class="row ListasColgantes">
                                <div class="col-12" >
                                    <h2 align="center">Proyectos Externos</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
