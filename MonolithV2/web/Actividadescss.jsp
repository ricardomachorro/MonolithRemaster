<%-- 
    Document   : Actividadescss
    Created on : 04-ene-2018, 16:48:16
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css2/BarraDeInicioSesion.css" rel="stylesheet" type="text/css">
        <script src="js2/jquery-3.2.1.min.js"></script>
        <script src="js2/popper.min.js"></script>
        <link href="Css2/ActividadesCss.css" rel="stylesheet" type="text/css">
        <script src="js2/bootstrap.min.js"></script>
        <script src="js2/jquery.validate.js"></script>
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
                        <a class="nav-link" ><img src="img/home (1).svg" class="ImagenesBarraInicio" >Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><img src="img/signing-the-contract.svg" class="ImagenesBarraInicio" >Actividades</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><img src="img/exam.svg" class="ImagenesBarraInicio" >Examenes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><img src="img/group-button.svg" class="ImagenesBarraInicio" >Proyectos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><img src="img/money-bag-with-dollar-symbol.svg" class="ImagenesBarraInicio" >Finanzas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><img src="img/international-delivery.svg" class="ImagenesBarraInicio" >Rutas</a>
                    </li>

                </ul>
                <ul class="navbar-nav mr-left mt-2 mt-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            <img src="img/user.svg" class="ImagenesBarraInicio" > Usuario
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" style="align-content:center;">
                            <a class="dropdown-item" href="#"><img src="img/enter.svg" class="ImagenesBarraInicio" > Cerrar Sesion</a>
                            <a class="dropdown-item" href="#"><img src="img/settings-work-tool.svg" class="ImagenesBarraInicio" >
                                Configuracion</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row" style="margin:13px;">
                <div class="col-12" >
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12" style="background-color:#BBDEFB;">
                            <div class="row" style="margin:13px;">
                                <div class="col-12" style="background-color:#fff;">
                                    <div class="row ContendorIndividualResumen" >
                                        <div class="col-12" >
                                            <!--Barra del Titulo de Pendientes-->
                                            <div class="row" >
                                                <div class="col-12 TituloResumen" >
                                                    <a>Informe Actividades</a><img src="img/clock.svg" class="rounded float-right ImagenesResumen" >
                                                </div>     
                                            </div>
                                            <!--Fin Barra del Titulo de Pendientes-->
                                            <!--Contenedor de Pendientes-->
                                            <div class="row">
                                                <div class="col-12 ContenedorListaResumen" >
                                                    <ul>
                                                        <li>Numero Actividades:</li>
                                                        <li>Actividades Expiradas:</li>
                                                    </ul>
                                                </div> 
                                            </div>
                                            <!--Fin Contenedor de Pendientes-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin:13px;">
                                <div class="col-12" style="background-color:#fff;">
                                    <div class="row ContendorIndividualResumen" >
                                        <div class="col-12" >
                                            <!--Barra del Titulo de Pendientes-->
                                            <div class="row" >
                                                <div class="col-12 TituloResumen" >
                                                    <a>Fechas Proximas</a><img src="img/clock.svg" class="rounded float-right ImagenesResumen" >
                                                </div>     
                                            </div>
                                            <!--Fin Barra del Titulo de Pendientes-->
                                            <!--Contenedor de Pendientes-->
                                            <div class="row">
                                                <div class="col-12 ContenedorListaResumen" style="overflow-y:scroll;min-height:170px;max-height:170px;" >
                                                    <ul>
                                                        <li>Numero Actividades:</li>
                                                        <li>Actividades Expiradas:</li>
                                                        <li>Actividades Expiradas:</li>
                                                        <li>Actividades Expiradas:</li>
                                                        <li>Actividades Expiradas:</li>
                                                        <li>Actividades Expiradas:</li>
                                                        <li>Actividades Expiradas:</li>
                                                        <li>Actividades Expiradas:</li>
                                                        <li>Actividades Expiradas:</li>

                                                    </ul>
                                                </div> 
                                            </div>
                                            <!--Fin Contenedor de Pendientes-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="background-color:#fff;">
                            
                                <div class="row" style="margin:13px;">
                                    <div class="col-12" style="background-color:#BBDEFB;">
                                        <div class="row" style="background-color:#313D66;color:#fff;padding:13px;text-align:center;">
                                            <div class="col-12" >
                                                <img src="img/fire-alarm.svg" class="rounded float-left ImagenesResumen" >Urgente<img src="img/fire-alarm.svg" class="rounded float-right ImagenesResumen" >
                                            </div>
                                        </div>
                                        <div class="row" style="margin:12px;">
                                            
                                            <div class="col-lg-12"  id="ContenedorPendientes">
                                                <div class="row">
                                                    <div class="col-12" id="TituloListaPendientes" >
                                                        <a>Menos de 24 horas<img src="img/24-hours-delivery.svg" class="rounded float-right ImagenesResumen"></a>
                                                    </div>
                                                </div>
                                                <div class="row" id="ContenedorListaPendientes" >
                                                    <div class="col-12" style="">

                                                        <!--Actividad de Ejemplo-->
                                                        <div class="row ListaObjeto" >
                                                            <div class="col-12" style="color:#fff;">
                                                                <div class="row TituloLista">
                                                                    <div class="col-12" style="background-color:#313D66;padding-top:6px;padding-bottom:0px;">
                                                                        <p style="text-align:left;">Actividad Pendiente<span style="float:right;">23/12/2017</span></p>
                                                                    </div>  
                                                                </div>
                                                                <div class="row" style="background-color:#B0B7D1;;padding-top:6px;padding-bottom:10px;">
                                                                    <div class="col-12">
                                                                        <a>hjhjkkjkjjk</a>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                        </div>
                                                        <!--Fin Actividad Ejemplo-->

                                                        
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
