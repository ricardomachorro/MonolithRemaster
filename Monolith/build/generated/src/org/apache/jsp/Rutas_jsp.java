package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Rutas_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Rutas\n");
      out.write("        </title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/bootstrap.min.css\">\n");
      out.write("        <link href=\"Css/test1.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/bootstraplogin.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Mukta\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/Menu.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/Rutas.css\">\n");
      out.write("        <script  src=\"js/Menu.js\">\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <!--<style>\n");
      out.write("            .parte1{\n");
      out.write("                background: red;\n");
      out.write("            }\n");
      out.write("        </style>-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"barraInicio navbar navbar-default \" style=\"font-family:Mukta\">Monolith<img  class=\"logo\" src=\"img/logo.png\" alt=\"\"></div>\n");
      out.write("        <header>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"uno\">\n");
      out.write("                <img class=\"icon\" src=\"img/home.png\" alt=\"HomeLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"dos\">\n");
      out.write("                <img class=\"icon\" src=\"img/examen.png\" alt=\"ExamenLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"tres\">\n");
      out.write("                <img class=\"icon\" src=\"img/proyectos.png\" alt=\"ProyectosLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"cuatro\">\n");
      out.write("                <img class=\"icon\" src=\"img/tareas.png\" alt=\"TareasLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"cinco\">\n");
      out.write("                <img class=\"icon\" src=\"img/finanza.png\" alt=\"FinanzasLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"seis\">\n");
      out.write("                <img class=\"icon\" src=\"img/ruta.png\" alt=\"RutaLogo\">\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"encubador\">\n");
      out.write("            <div class=\"prime\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"segu\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"terce\">\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-11 titulo \">\n");
      out.write("                        <img class=\"image1\" src=\"img/ImagenRutaMapa.png\" alt=\"LogoMapa\"/>\n");
      out.write("                        Mapa\n");
      out.write("                        <img class=\"image2\" src=\"img/ImagenRutaMapa.png\" alt=\"LogoMapa\"/>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"div1\">\n");
      out.write("                            <input type=\"text\" id=\"partida\" name=\"partida\" class=\"cuadros\" placeholder=\" Partida\">\n");
      out.write("                            <input type=\"text\" id=\"salida\" name=\"salida\" class=\"cuadros\" placeholder=\" Salida\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"div2\">\n");
      out.write("                            <img class=\"image3\" src=\"img/ImagenEstrella.jpg\" alt=\"LogoMapa\"/>\n");
      out.write("                            <img class=\"image3\" src=\"img/ImagenBuscar.png\" alt=\"LogoMapa\"/>\n");
      out.write("                        </div>\n");
      out.write("                    <!--<div class=\"col-11 align-self-center\">\n");
      out.write("                        \n");
      out.write("                    </div>-->\n");
      out.write("                </div>\n");
      out.write("                <iframe class=\"mapa\" src=\"https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d15035.755755219057!2d-99.0073675!3d19.5871165!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2smx!4v1509768142725\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen>\n");
      out.write("\n");
      out.write("                </iframe>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"cuar\">\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-11 titulo \">\n");
      out.write("                        <img class=\"image1\" src=\"img/ImagenUbicacion.png\" alt=\"LogoMapa\"/>\n");
      out.write("                        Lista de rutas\n");
      out.write("                        <img class=\"image2\" src=\"img/ImagenUbicacion.png\" alt=\"LogoMapa\"/>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <br/>\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <input type=\"text\" class=\"rutas\" name=\"rutas\" placeholder=\" Ruta 1\"/>\n");
      out.write("                    <img src=\"img/ImagenRutaEliminar.png\" alt=\"Borrar\" class=\"img-borra\"/>\n");
      out.write("                    <input type=\"text\" class=\"rutas\" name=\"rutas\" placeholder=\" Ruta 2\"/>\n");
      out.write("                    <img src=\"img/ImagenRutaEliminar.png\" alt=\"Borrar\" class=\"img-borra\"/>\n");
      out.write("                    <input type=\"text\" class=\"rutas\" name=\"rutas\" placeholder=\" Ruta 3\"/>\n");
      out.write("                    <img src=\"img/ImagenRutaEliminar.png\" alt=\"Borrar\" class=\"img-borra\"/>\n");
      out.write("                    <input type=\"text\" class=\"rutas\" name=\"rutas\" placeholder=\" Ruta 4\"/>\n");
      out.write("                    <img src=\"img/ImagenRutaEliminar.png\" alt=\"Borrar\" class=\"img-borra\"/>\n");
      out.write("                    <input type=\"text\" class=\"rutas\" name=\"rutas\" placeholder=\" Ruta 5\"/>\n");
      out.write("                    <img src=\"img/ImagenRutaEliminar.png\" alt=\"Borrar\" class=\"img-borra\"/>\n");
      out.write("                    <!--<div class=\"col-11 subtitulo\">\n");
      out.write("                        <h2>Gastos en las ultimas 2 semanas</h2>\n");
      out.write("                    </div>-->\n");
      out.write("                </div>\n");
      out.write("                <br>\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-12 align-self-center\">\n");
      out.write("                        <center><img src=\"img/grafica.png\" alt=\"\"></center>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
