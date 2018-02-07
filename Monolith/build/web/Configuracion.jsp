<%-- 
    Document   : Configuracion
    Created on : 20-nov-2017, 11:46:57
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/ConfiguracionCuenta.css" rel="stylesheet" type="text/css">
        <link href="Css/BarraDeInicioSesion.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu.css">
        <script src="js/popper.min.js"></script>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/FormularioRegistro.js"></script>
        <%
            HttpSession sesion = request.getSession();
            String Usuario = sesion.getAttribute("usuario").toString();
            String Password = sesion.getAttribute("password").toString();
        %>
    </head>
    <body style="background-color:#e1f7f5;">
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
                        <a class="nav-link" href="Proyectos.jsp" ><img src="img/group-button.svg" class="ImagenesBarraInicio" >Proyectos</a>
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

    <div class="container-fluid" style="padding-left:13px;padding-right:13px;margin-bottom:43px;">

        <!--Barra Navegacion-->

        <form class="form-register " role="form" id="registro" method="POST" action="CambiosUsuarios" >
            <h2 class="form-titulo">Configuracion</h2>
            <%                    Connection con = null;
                Statement sta = null;
                ResultSet r = null;
                String UsuarioRegreso = "";
                String InstitucionRegreso = "";
                String EstudiosRegreso = "";
                int EdadRegreso = 0;
                String PaisRegreso = "";
                String DireccionRegreso = "";
                String CorreoRegreso = "";
               

                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                    sta = con.createStatement();
                    r = sta.executeQuery("select * from Usuario where Nombreusuario='" + Usuario + "';");
                    if (r.next()) {
                        UsuarioRegreso = r.getString("NombreUsuario");
                        InstitucionRegreso = r.getString("Institucion");
                        EstudiosRegreso = r.getString("NivelEstudio");
                        EdadRegreso = r.getInt("Edad");
                        PaisRegreso = r.getString("Pais");
                        DireccionRegreso = r.getString("Direccion");
                        CorreoRegreso = r.getString("Correo");
                        Password = r.getString("Contrasena");

                    }
                } catch (Exception e) {

                }
            %>
            <div class="contenedor-inputs container-fluid ">

                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada" >Nombre Usuario</label>
                    </div>
                    <div class="col-6">
                        <input type="text" class=" form-control " style="width:100%;margin-top:10px;" id="nombre"  
                               <%
                                   out.println("value='" + UsuarioRegreso + "'");

                               %>
                               name="nombre" placeholder="Nombre Usuario" >
                    </div>
                </div>

                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada"  >Institucion </label>
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" style="width:100%;margin-top:10px;" id="institucion"
                               <%                                        out.println("value='" + InstitucionRegreso + "'");

                               %>
                               name="institucion" placeholder="Institucion" >
                    </div>
                </div>

                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada" >Nivel de Estudios</label>
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="estudios" 
                               <%                                      out.println("value='" + EstudiosRegreso + "'");

                               %>
                               name="estudios" placeholder="Estudios" >
                    </div>
                </div>
                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada">Edad</label>
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="numero" 
                               <%                                       out.println("value='" + EdadRegreso + "'");

                               %>
                               name="edad" placeholder="Edad" >
                    </div>
                </div>
                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada">Pais</label>
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="pais"
                               <%                                       out.println("value='" + PaisRegreso + "'");
                               %>
                               name="pais" placeholder="Pais" >
                    </div>
                </div>
                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada" style="">Direccion</label>
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="path"
                               <%
                                   out.println("value='" + DireccionRegreso + "'");

                               %>
                               name="direccion" placeholder="Direccion" >
                    </div>
                </div>
                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada" style="">Correo</label>
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="correo" 
                               <%                                       out.println("value='" + CorreoRegreso + "'");

                               %>
                               name="correo" placeholder="Correo" >
                    </div>
                </div>
                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada" style="">Contraseña</label>
                    </div>
                    <div class="col-6">
                        <input type="password" class="form-control" style="width:100%;margin-top:10px;"  id="contra" 
                               <%                                       out.println("value='" + Password + "'");

                               %>
                               name="contra" placeholder="Contraseña" >
                    </div>
                </div>

                <div class="col-12" style="padding-left:40%;padding-right:40%;">
                    <input class="registro"  type="submit" id="Envio" value="Guardar Cambios">
                </div>

            </div>
        </form>

    </body>
</html>
