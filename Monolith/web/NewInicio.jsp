<%-- 
    Document   : NewInicio
    Created on : 31/01/2018, 11:23:12 AM
    Author     : Alumno
--%>
<%@page import="java.sql.*,java.io.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    String Usuario = sesion.getAttribute("usuario").toString();
    String Password = sesion.getAttribute("password").toString();
     
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css/BarraDeInicioSesion.css" rel="stylesheet" type="text/css">
         <link href="Css/InicioSesion.css" rel="stylesheet" type="text/css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.validate.js"></script>
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
        <div class="container-fluid">
            
            <!-- Grafica -->
            
            <!-- Fin Grafica  -->

         
            <!--Contenedor de Elementos-->
            <div class="row" style="margin:13px;">
                <div class="col-12">
                    <div class="row" >

                        <!--Contenedor de Elementos de Informe normales-->
                        <div class="col-lg-4 col-md-4 col-sm-12" style="padding:12px;">
                            <div class="row">
                                <div class="col-12">
                                    <!--Titulo de Elemeentos del Informe-->
                                    <div class="row ListasColgantes" style="">
                                        <div class="col-12" >
                                            
                                            Informe
                                           
                                        </div>
                                    </div>
                                    <!--Titulo de Elementos del Informe-->

                                    <!--Contenedor de Pendientes-->
                                    <div class="row ContendorIndividualResumen" >
                                        <div class="col-12" >
                                            <!--Barra del Titulo de Pendientes-->
                                            <div class="row" >
                                                <div class="col-12 TituloResumen" >
                                                    <a>Lista de Pendientes</a><img src="img/clock.svg" class="rounded float-right ImagenesResumen" >
                                                </div>     
                                            </div>
                                            <!--Fin Barra del Titulo de Pendientes-->

                                            <!--Lista de Pendientes-->
                                            <div class="row">
                                                <div class="col-12 ContenedorListaResumen" >
                                                    <ul>
                                                        <li>Actividades Pendientes:</li>
                                                        <li>Proyectos Pendientes:</li>
                                                        <li>Examenes Proximos:</li>
                                                        <li>Eventos Expirados:</li>
                                                    </ul>
                                                </div> 
                                            </div>
                                            <!--Fin Lista de Pendientes-->


                                        </div>
                                    </div> 
                                    <!--Fin Contenedor de Pendientes-->   


                                    <!--Contenedor de Eventos Finalizados-->
                                    <div class="row ContendorIndividualResumen" >
                                        <div class="col-12" >
                                            <!--Barra del Titulo de Eventos Finalizados-->
                                            <div class="row"  style="">
                                                <div class="col-12 TituloResumen" >
                                                    <a>Eventos finalizados</a><img src="img/check-mark.svg" class="rounded float-right ImagenesResumen" >
                                                </div>     
                                            </div>
                                            <!--Fin Barra del Titulo de Eventos Finalizados-->
                                            <!--Lista de Eventos Finalizados -->
                                            <div class="row">
                                                <div class="col-12 ContenedorListaResumen" >
                                                    <ul>
                                                        <li>Actividades Finalizadas:</li>
                                                        <li>Proyectos Finalizados:</li>
                                                        <li>Examenes Finalizados:</li>
                                                        <li>Total Actividades Finalizados:</li>
                                                    </ul>
                                                </div> 
                                            </div>
                                            <!--Fin Lista de Eventos Finalizados -->
                                        </div>
                                    </div>
                                    <!--Fin Contenedor de Eventos Finalizados -->
                                </div>
                            </div>
                        </div>
                        <!-- Fin Contenedor de Elementos de Informe normales-->

                        <!-- Contenedor de Elementos Urgentes-->
                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <div class="row ContenedoresListasColgantes" >
                                <div class="col-12">
                                    <!--Titulo de Elementos Urgentes-->
                                    <div class="row ListasColgantes">
                                        <div class="col-12" >
                                            Urgente
                                        </div>
                                    </div>
                                    <!--Fin Titulo de Elementos Urgentes-->

                                    <!--Lista de Elementos Urgentes-->
                                    <div class="row">
                                        <div class="col-lg-12"  id="ContenedorPendientes">
                                            <div class="row">
                                                <div class="col-12" id="TituloListaPendientes" >
                                                    <a>Menos de 24 horas<img src="img/24-hours.svg" class="rounded float-right ImagenesResumen"></a>
                                                </div>
                                            </div>
                                            <div class="row" id="ContenedorListaPendientes" >
                                                <div class="col-12" >

                                                    <!--Actividad de Ejemplo-->
                                                    <div class="row ListaObjeto" >
                                                        <div class="col-12" style="">
                                                            <div class="row TituloLista">
                                                                <div class="col-12" >
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <span style="float:left;">Fecha</span> 
                                                                            <span style="float:right">
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/edit.svg" ></button>
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/checked.svg" ></button>
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/trash.svg" ></button>
                                                                            </span>  
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                           dsaddasdsdsdas
                                                                        </div>
                                                                    </div>
                                                                </div>  
                                                            </div>
                                                        </div> 
                                                    </div>
                                                    <!--Fin Actividad Ejemplo-->    
  
                                                       <!--Actividad de Ejemplo-->
                                                    <div class="row ListaObjeto" >
                                                        <div class="col-12" style="">
                                                            <div class="row TituloLista">
                                                                <div class="col-12" >
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <span style="float:left;">Fecha</span> 
                                                                            <span style="float:right">
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/edit.svg" ></button>
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/checked.svg" ></button>
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/trash.svg" ></button>
                                                                            </span>  
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                           dsaddasdsdsdas
                                                                        </div>
                                                                    </div>
                                                                </div>  
                                                            </div>
                                                        </div> 
                                                    </div>
                                                    <!--Fin Actividad Ejemplo-->  
                                                      <!--Actividad de Ejemplo-->
                                                    <div class="row ListaObjeto" >
                                                        <div class="col-12" style="">
                                                            <div class="row TituloLista">
                                                                <div class="col-12" >
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <span style="float:left;">Fecha</span> 
                                                                            <span style="float:right">
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/edit.svg" ></button>
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/checked.svg" ></button>
                                                                                <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/trash.svg" ></button>
                                                                            </span>  
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                           dsaddasdsdsdas
                                                                        </div>
                                                                    </div>
                                                                </div>  
                                                            </div>
                                                        </div> 
                                                    </div>
                                                    <!--Fin Actividad Ejemplo-->  
                                                  
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Lista de Elementos Urgentes-->

                                </div>
                            </div>
                        </div>
                        <!--Fin de Contenedor de Elemntos Urgentes-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Fin de Contenedor de Elementos-->


</body>
</html>
