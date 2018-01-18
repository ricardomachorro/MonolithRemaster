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
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css2/BarraDeInicioSesion.css" rel="stylesheet" type="text/css">
        <link href="Css2/InicioSesion.css" rel="stylesheet" type="text/css">
        <script src="js2/jquery-3.2.1.min.js"></script>
        <script src="js2/popper.min.js"></script>
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
            <!--Barra de Botones para actividades rapidas-->
            <!--<div class="row" style="background-color:#fff;" >
                 <div class=" col-12">
            <!--Barra Titulo de Acciones Rapidas-->
            <!-- <div class="row">
                 <div class="col-12" style="background-color:#313D66; color:#fff;padding:13px;text-align:center;">
                     <img src="img/stopwatch-tool-to-control-test-time.svg" class="rounded float-left ImagenesResumen" >  Acciones rapidas<img src="img/stopwatch-tool-to-control-test-time.svg" class="rounded float-right ImagenesResumen" >
                 </div>
             </div>-->
            <!--Fin Barra Titulo de Acciones Rapidas-->
            <!--   <div class="row BarraBotonesFast">
                   <div class="col-1">
                   </div>
                   <div class="col-10">
                       <div class="row  " >
                           <div class="col-lg-2  col-sm-3">
                           </div>
                           <div class="col-lg-4 col-sm-3"  id="PanelBotonesFast">
                               <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevaActividad"><img class="imagenesBotonesFast" src="img/add-button-inside-black-circle.svg" >Actividad</button>
                           </div>
                           <div class="col-lg-4 col-sm-3"  id="PanelBotonesFast">
                               <button class="botonfast btn btn-primary" data-toggle="modal" data-target="#NuevoExamen"><img class="imagenesBotonesFast" src="img/add-button-inside-black-circle.svg">Examen</button>
                           </div>
                           <div class="col-lg-2 col-sm-3">
                           </div>
                       </div>
                   </div>
                   <div class="col-1">
                   </div>
               </div>
           </div>
       </div>
            
            <!-- Fin Barra de Botones para actividades rapidas -->



            <!--Modal de registro de Actividad-->
            <div class="modal fade bd-example-modal-lg" id="NuevaActividad" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" align="center" style="text-align:center" id="exampleModalLabel">Nueva Actividad</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body actividadformcont"  >
                            <form  class="actividadform" style="width:100%;"  >
                                <div class="row targetactividad"  style="width:100%;">
                                    <div class="col-6 col-sm-auto" style="width:100%;">
                                        <label  class="col-form-label">Nombre actividad</label>
                                    </div>
                                    <div class="col-6  col-sm-auto" style="width:100%;">
                                        <input type="text" class="form-control" id="recipient-name" placeholder="Nombre Actividad">
                                    </div>  
                                </div> 
                                <div class="row targetactividad" style="width:100%;">
                                    <div class="col-6 col-sm-auto" style="width:100%;">
                                        <label  class="col-form-label">Forma de Entrega</label>
                                    </div>
                                    <div class="col-6  col-sm-auto" style="width:100%;">
                                        <input type="text" class="form-control" id="recipient-name" placeholder="Forma de Entrega">
                                    </div>
                                </div> 
                                <div class="row targetactividad" style="width:100%;" >
                                    <div class="col-3 targetactividadfecha">
                                        <label  class="col-form-label">Fecha de Entrega</label>
                                    </div>
                                    <div class="col-3">
                                        <select id="inputState" class="form-control">
                                            <option selected>Dia</option>
                                            <option>...</option>
                                        </select>
                                    </div>
                                    <div class="col-3">
                                        <select id="inputState" class="form-control">
                                            <option selected>Mes</option>
                                            <option>...</option>
                                        </select>
                                    </div>
                                    <div class="col-3">
                                        <select id="inputState" class="form-control">
                                            <option selected>Año</option>
                                            <option>...</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row descripcionproyecto">
                                    <label for="message-text" class="form-control-label descripcionproyecto">Descripcion:</label>
                                    <textarea class="form-control descripcionproyecto" id="message-text"></textarea>
                                </div>
                                <div class="row">
                                    <div class="col-5">
                                    </div>
                                    <div class="col-4">
                                        <button class="btn btn-primary" >Guardar Actividad</button>
                                    </div>
                                    <div class="col-3">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--Fin del Modal de Registro Actividad-->


            <!--Inicio Modal Nuevo Examen-->
            <div class="modal fade bd-example-modal-lg" id="NuevoExamen" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
            <!--Fin Modal Nuevo Examen-->


            <!--Contenedor de Elementos-->
            <div class="row" style="margin:13px;">
                <div class="col-12">
                    <div class="row" >

                        <!--Contenedor de Elementos de Informe normales-->
                        <div class="col-lg-4 col-md-4 col-sm-12" style="padding:12px;">
                            <div class="row">
                                <div class="col-12" style="background-color:#fff;">
                                    <!--Titulo de Elemeentos del Informe-->
                                    <div class="row" style="background-color:#313D66;color:#fff;padding:13px;text-align:center;">
                                        <div class="col-12" >
                                            <img src="img/information.svg" class="rounded float-left ImagenesResumen" >Informe<img src="img/information.svg" class="rounded float-right ImagenesResumen" >
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
                            <div class="row" style="margin:13px;">
                                <div class="col-12" style="background-color:#fff;">
                                    <!--Titulo de Elementos Urgentes-->
                                    <div class="row" style="background-color:#313D66;color:#fff;padding:13px;text-align:center;">
                                        <div class="col-12" >
                                            <img src="img/fire-alarm.svg" class="rounded float-left ImagenesResumen" >Urgente<img src="img/fire-alarm.svg" class="rounded float-right ImagenesResumen" >
                                        </div>
                                    </div>
                                    <!--Fin Titulo de Elementos Urgentes-->

                                    <!--Lista de Elementos Urgentes-->
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
                                                        <div class="col-12" style="color:#fff;">
                                                            <div class="row TituloLista">
                                                                <div class="col-12" style="background-color:#313D66;padding-top:6px;padding-bottom:0px;">
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
                                                        <div class="col-12" style="color:#fff;">
                                                            <div class="row TituloLista">
                                                                <div class="col-12" style="background-color:#313D66;padding-top:6px;padding-bottom:0px;">
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
                                                        <div class="col-12" style="color:#fff;">
                                                            <div class="row TituloLista">
                                                                <div class="col-12" style="background-color:#313D66;padding-top:6px;padding-bottom:0px;">
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
                                                        <div class="col-12" style="color:#fff;">
                                                            <div class="row TituloLista">
                                                                <div class="col-12" style="background-color:#313D66;padding-top:6px;padding-bottom:0px;">
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

</div>
</body>
</html>
