package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;;

public final class InicioSesion_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

   
    HttpSession sesion = request.getSession();
    String Usuario = request.getParameter("usuario");
    String Password = request.getParameter("contrasenia");
    Connection con = null;
    Statement sta = null;
    ResultSet r = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
        sta = con.createStatement();
    } catch (SQLException error) {
        out.print(error.toString());
    }
    if (sesion.isNew()) {
        try {
            r = sta.executeQuery("select * from Usuario where NombreUsuario='" + Usuario + "';");
            if (r.next()) {

                rs = sta.executeQuery("select * from Usuario where NombreUsuario='" + Usuario + "' and Contrasena='" + Password + "';");
                if (rs.next()) {
                    sesion.setAttribute("usuario", Usuario);
                    sesion.setAttribute("password", Password);
                    out.println("<html>");
                    out.println("<head>");
                    out.println(" <title>Inicio</title>");
                    out.println("<meta charset='UTF-8'>");
                    out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
                    out.println("<link href='Css/bootstrap.css' rel='stylesheet' type='text/css'>");
                    out.println("<link href='Css/test1.css' rel='stylesheet' type='text/css'>");
                    out.println("<link href='Css/bootstraplogin.css' rel='stylesheet' type='text/css'>");
                    out.println("<link href='https://fonts.googleapis.com/css?family=Mukta' rel='stylesheet'>");
                    out.println("<link rel='stylesheet' href='Css/Menu.css'>");
                    out.println("<script src='js/jquery-3.2.1.min.js'></script>");
                    out.println("<script src='js/popper.min.js'></script>");
                    out.println("<script src='js/bootstrap.min.js'></script>");
                    out.println("<script type='text/javascript'>");
                    out.println(
                            "function agrandar(){"
                            + "var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 130 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 100 + '%';}"
                            + "function agrandar2() {"
                            + " var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 130 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 100 + '%'; }"
                            + "function agrandar3() {"
                            + "var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 130 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 100 + '%';}"
                            + "function agrandar4() {"
                            + "var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 130 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 100 + '%';}"
                            + " function agrandar5() {"
                            + "var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 130 + '%';"
                            + "tamano6.style.height = 100 + '%';}"
                            + "function agrandar6() {"
                            + "var tamano = document.getElementById('uno');"
                            + " var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 130 + '%';}"
                            + "</script>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<nav class='navbar navbar-expand-lg navbar-light' style='background-color: #00838F;'>");
                    out.println("<a class='navbar-brand text-white' href='#'>");
                    out.println("<img src='img/Logo.svg' width='30' height='30' class='d-inline-block align-top' alt='Logo'>Monolith</a>");
                    out.println("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNavAltMarkup' aria-controls='navbarNavAltMarkup' aria-expanded='false' aria-label='Toggle navigation'>");
                    out.println("<span class='navbar-toggler-icon'></span>");
                    out.println("</button>");
                    out.println(" <div class='collapse navbar-collapse' id='navbarNavAltMarkup'>");
                    out.println(" <div class='navbar-nav ml-auto'>");
                    out.println("<a class='nav-link dropdown-toggle text-white' href='#' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Usuario</a>");
                    out.println("<div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownMenuLink'>");
                     out.println("<a class=\"dropdown-item\" href=\"#\">"+Usuario+"</a>");
                     out.println(" <a class='dropdown-item' href='#'>Configuracion</a>");
                    out.println("<a class='dropdown-item' href='CerrarSesion.jsp'>Cerrar Sesion</a>");
                    out.println("</div>"+
                            "</div>" +
                          "</div>"+
                         "</nav>");
                    out.println("<div class='container-fluid' style='padding-left:13px;padding-right:13px;'>");
                    out.println("<header>");
                    out.println("<div class='col-12'>");
                    out.println(" <div class=\"contenedor\" id=\"uno\" onclick=\"location.href='InicioSesion.jsp';\" ondblclick=\"minimizar();\">");
                    out.println(" <img class='icon' src='img/home.png' alt='HomeLogo'>");
                    out.println("</div>");

                    out.println("<div class='contenedor' id='dos'  onclick=\"location.href='Examen.jsp';\" >");
                    out.println(" <img class='icon' src='img/examen.png' alt='ExamenLogo'>");
                    out.println("</div>");

                    out.println(" <div class='contenedor' id='tres' onclick='location.href='Proyectos.jsp';' >");
                    out.println(" <img class='icon' src='img/proyectos.png' alt='ProyectosLogo'>");
                    out.println("</div>");

                    out.println("<div class=\"contenedor\" id=\"cuatro\"   onclick=\"location.href='Actividades.jsp';\" ondblclick=\"minimizar();\">");
                    out.println(" <img class=\"icon\" src=\"img/tareas.png\" alt=\"TareasLogo\">");
                    out.println("</div>");

                    out.println("<div class='contenedor' id='cinco' onclick=\"location.href='Finanzas.jsp';\">");
                    out.println("<img class='icon' src='img/finanza.png' alt='FinanzasLogo'>");
                    out.println("</div>");

                    out.println(" <div class='contenedor' id='seis' onclick='agrandar6();'>");
                    out.println("<img class='icon' src='img/ruta.png' alt='RutaLogo'>");
                    out.println("</div>");

                    out.println("</div>"
                            + " </header>");
                    out.println("</div>");
                    out.println("</body>");
                    out.println("</html>");
                } else {
                    response.sendRedirect("ContrasenaIncorrecta.jsp");
                }
            } else {
                response.sendRedirect("UsuarioNoRegistrado.jsp");
            }

        } catch (SQLException error) {
            out.print(error.toString());
        }
    }else{
       String User=sesion.getAttribute("usuario").toString();
       out.println("<html>");
                    out.println("<head>");
                    out.println(" <title>Inicio</title>");
                    out.println("<meta charset='UTF-8'>");
                    out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
                    out.println("<link href='Css/bootstrap.css' rel='stylesheet' type='text/css'>");
                    out.println("<link href='Css/test1.css' rel='stylesheet' type='text/css'>");
                    out.println("<link href='Css/bootstraplogin.css' rel='stylesheet' type='text/css'>");
                    out.println("<link href='https://fonts.googleapis.com/css?family=Mukta' rel='stylesheet'>");
                    out.println("<link rel='stylesheet' href='Css/Menu.css'>");
                    out.println("<script src='js/jquery-3.2.1.min.js'></script>");
                    out.println("<script src='js/popper.min.js'></script>");
                    out.println("<script src='js/bootstrap.min.js'></script>");
                    out.println("<script type='text/javascript'>");
                    out.println(
                            "function agrandar(){"
                            + "var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 130 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 100 + '%';}"
                            + "function agrandar2() {"
                            + " var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 130 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 100 + '%'; }"
                            + "function agrandar3() {"
                            + "var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 130 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 100 + '%';}"
                            + "function agrandar4() {"
                            + "var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 130 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 100 + '%';}"
                            + " function agrandar5() {"
                            + "var tamano = document.getElementById('uno');"
                            + "var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 130 + '%';"
                            + "tamano6.style.height = 100 + '%';}"
                            + "function agrandar6() {"
                            + "var tamano = document.getElementById('uno');"
                            + " var tamano2 = document.getElementById('dos');"
                            + "var tamano3 = document.getElementById('tres');"
                            + "var tamano4 = document.getElementById('cuatro');"
                            + "var tamano5 = document.getElementById('cinco');"
                            + "var tamano6 = document.getElementById('seis');"
                            + "tamano.style.height = 100 + '%';"
                            + "tamano2.style.height = 100 + '%';"
                            + "tamano3.style.height = 100 + '%';"
                            + "tamano4.style.height = 100 + '%';"
                            + "tamano5.style.height = 100 + '%';"
                            + "tamano6.style.height = 130 + '%';}"
                            + "</script>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<nav class='navbar navbar-expand-lg navbar-light' style='background-color: #00838F;'>");
                    out.println("<a class='navbar-brand text-white' href='#'>");
                    out.println("<img src='img/Logo.svg' width='30' height='30' class='d-inline-block align-top' alt='Logo'>Monolith</a>");
                    out.println("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNavAltMarkup' aria-controls='navbarNavAltMarkup' aria-expanded='false' aria-label='Toggle navigation'>");
                    out.println("<span class='navbar-toggler-icon'></span>");
                    out.println("</button>");
                    out.println(" <div class='collapse navbar-collapse' id='navbarNavAltMarkup'>");
                    out.println(" <div class='navbar-nav ml-auto'>");
                    out.println("<a class='nav-link dropdown-toggle text-white' href='#' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Usuario</a>");
                    out.println("<div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownMenuLink'>");
                     out.println("<a class=\"dropdown-item\" href=\"#\">"+User+"</a>");
                     out.println(" <a class='dropdown-item' href='#'>Configuracion</a>");
                    out.println("<a class='dropdown-item' href='CerrarSesion.jsp'>Cerrar Sesion</a>");
                    out.println("</div>"+
                            "</div>" +
                          "</div>"+
                         "</nav>");
                    out.println("<div class='container-fluid' style='padding-left:13px;padding-right:13px;'>");
                    out.println("<header>");
                    out.println("<div class='col-12'>");
                    out.println(" <div class=\"contenedor\" id=\"uno\" onclick=\"location.href='InicioSesion.jsp';\" ondblclick=\"minimizar();\">");
                    out.println(" <img class='icon' src='img/home.png' alt='HomeLogo'>");
                    out.println("</div>");

                    out.println("<div class='contenedor' id='dos'  onclick=\"location.href='Examen.jsp';\" >");
                    out.println(" <img class='icon' src='img/examen.png' alt='ExamenLogo'>");
                    out.println("</div>");

                    out.println(" <div class='contenedor' id='tres' onclick=\"location.href='Proyectos.jsp';\" >");
                    out.println(" <img class='icon' src='img/proyectos.png' alt='ProyectosLogo'>");
                    out.println("</div>");

                    out.println("<div class=\"contenedor\" id=\"cuatro\"   onclick=\"location.href='Actividades.jsp';\" ondblclick=\"minimizar();\">");
                    out.println(" <img class=\"icon\" src=\"img/tareas.png\" alt=\"TareasLogo\">");
                    out.println("</div>");

                    out.println("<div class='contenedor' id='cinco' onclick=\"location.href='Finanzas.jsp';\">");
                    out.println("<img class='icon' src='img/finanza.png' alt='FinanzasLogo'>");
                    out.println("</div>");

                    out.println(" <div class='contenedor' id='seis' onclick='agrandar6();'>");
                    out.println("<img class='icon' src='img/ruta.png' alt='RutaLogo'>");
                    out.println("</div>");

                    out.println("</div>"
                            + " </header>");
                    out.println("</div>");
                    out.println("</body>");
                    out.println("</html>");
    }
    



      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
