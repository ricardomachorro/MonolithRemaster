<%-- 
    Document   : InicioCss
    Created on : 21-dic-2017, 12:45:35
    Author     : Ricardo
--%>

<%@page import="java.sql.*,java.io.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css2/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css2/BarraDeInicioSesion.css" rel="stylesheet" type="text/css">
        <script src="js2/jquery-3.2.1.min.js"></script>
        <script src="js2/popper.min.js"></script>
        <script src="js2/bootstrap.min.js"></script>
        <script src="js2/jquery.validate.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light BarraDeInicio">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand"><img src="img/pawn.svg" style="height:40px;width:40px;"></a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" >Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">Actividades</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">Examenes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">Proyectos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">Finanzas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">Rutas</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Usuario
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Cerrar Sesion</a>
                            <a class="dropdown-item" href="#">Configuracion</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid" style="padding-left:13px;padding-right:13px;">
            <div class="row">
                <div class="col-8">
                    <button class="btn btn-primary"><img src="img/a-mark.svg" style="width:40px;height:40px;margin:7px;">Agregar Actividad</button>
                    <button class="btn btn-primary"><img src="img/list.svg" style="width:40px;height:40px;margin:7px;">>Agregar Examen</button>
                </div>
            </div>
        </div>



    </body>
</html>
