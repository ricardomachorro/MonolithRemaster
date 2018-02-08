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
        <script>
            $(document).ready(function () {
                $('#BotonAgregarIntegrante').click(function () {
                    var nombre = $('#CorreoIntegrante').val();
                    $('#VandejaCorreos').append('<div class="row TarjetasCorreo" >' +
                            '<div class="col-12 TarjetasCorreoCarta">' +
                            nombre + '<img src="img/trash.svg" class="float-right ImagenBasuraCorreo">' +
                            '</div>' +
                            '</div>'
                            );
                });
            });
        </script>
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
                            <div class="row" style="overflow-y: scroll;margin-top:12px;height:300px;">
                                <div class="col-12">
                                    <div class="row Cartel" style="margin:7px;">
                                        <div class="col-12" >
                                            <a>Proyecto1<img class="float-right" style="width:30px;height:30px;margin:12px;" src="img/add.svg"><img class="float-right" style="width:30px;height:30px;margin:12px;" src="img/TrashBlue.svg"></a>
                                        </div>
                                    </div>
                                    <div class="row Cartel" style="margin:7px;">
                                        <div class="col-12" >
                                            <a>Proyecto1<img class="float-right" style="width:30px;height:30px;margin:12px;" src="img/add.svg"><img class="float-right" style="width:30px;height:30px;margin:12px;" src="img/TrashBlue.svg"></a>
                                        </div>
                                    </div>
                                    <div class="row Cartel" style="margin:7px;">
                                        <div class="col-12" >
                                            <a>Proyecto1<img class="float-right" style="width:30px;height:30px;margin:12px;" src="img/add.svg"><img class="float-right" style="width:30px;height:30px;margin:12px;" src="img/TrashBlue.svg"></a>
                                        </div>
                                    </div>
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
                                <form  id="actividadform" style="width:100%;"   >
                                    <div class="row">
                                        <div class="col-12">
                                            <input type="text" placeholder="Nuevo Proyecto" style="width:100%;margin-top:13px;margin-right:13px;">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-10">
                                            <input type="text" placeholder="Correo de Integrante" id="CorreoIntegrante" style="width:100%;margin-top:25px;margin-right:13px;">
                                        </div>
                                        <div class="col-2">
                                            <img  src="img/add.svg" id="BotonAgregarIntegrante">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12" id="VandejaCorreos" style="overflow-y:scroll;height:200px;">
                                            <!--
                                            <div class="row TarjetasCorreo" >
                                                <div class="col-12 TarjetasCorreoCarta">
                                                    assas<img src="img/trash.svg" class="float-right ImagenBasuraCorreo">
                                                </div>
                                            </div>
                                            <div class="row TarjetasCorreo" >
                                                <div class="col-12 TarjetasCorreoCarta">
                                                    assas<img src="img/trash.svg" class="float-right ImagenBasuraCorreo">
                                                </div>
                                            </div>-->
                                        </div>
                                    </div>
                                    <div class="row" style="margin:13px;">
                                        <div class="col-5">
                                        </div>
                                        <div class="col-2">
                                            <button class="btn btn-primary" type="submit">Crear proyecto</button>
                                        </div>
                                        <div class="col-5">
                                        </div>
                                    </div>

                                </form>
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
                            <div class="row" style="overflow-y: scroll;margin-top:12px;height:500px;">
                                <div class="col-12">
                                    <div class="row Cartel" style="margin:7px;">
                                        <div class="col-12" >
                                            <div class="row">
                                                <div class="col-8">
                                                    Proyecto 1
                                                </div>
                                                <div class="col-4">
                                                    <div class="row">
                                                        <div class="col-12" style="font-size:small;text-align:left;">
                                                            Eres miembro<img class="float-right" style="width:10px;height:10px;margin:12px;" src="img/SuccessBlue.svg.svg">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12" style="font-size:small;text-align:left;">
                                                           Dueño
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row Cartel" style="margin:7px;">
                                        <div class="col-12" >
                                            <div class="row">
                                                <div class="col-8">
                                                    Proyecto 1
                                                </div>
                                                <div class="col-4">
                                                    <div class="row">
                                                        <div class="col-12" style="font-size:small;text-align:left;">
                                                            Eres miembro<img class="float-right" style="width:10px;height:10px;margin:12px;" src="img/SuccessBlue.svg.svg">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12" style="font-size:small;text-align:left;">
                                                           Dueño
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row Cartel" style="margin:7px;">
                                        <div class="col-12" >
                                            <div class="row">
                                                <div class="col-8">
                                                    Proyecto 1
                                                </div>
                                                <div class="col-4">
                                                    <div class="row">
                                                        <div class="col-12" style="font-size:small;text-align:left;">
                                                            Eres miembro<img class="float-right" style="width:10px;height:10px;margin:12px;" src="img/SuccessBlue.svg.svg">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12" style="font-size:small;text-align:left;">
                                                           Dueño
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row Cartel" style="margin:7px;">
                                        <div class="col-12" >
                                            <div class="row">
                                                <div class="col-8">
                                                    Proyecto 1
                                                </div>
                                                <div class="col-4">
                                                    <div class="row">
                                                        <div class="col-12" style="font-size:small;text-align:left;">
                                                            Eres miembro<img class="float-right" style="width:10px;height:10px;margin:12px;" src="img/SuccessBlue.svg.svg">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12" style="font-size:small;text-align:left;">
                                                           Dueño
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
