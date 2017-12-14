package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;;

public final class UsuarioNoRegistrado_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Usuario No encontrado</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"Css/pruebaregistro.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/bootstraplogin.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"js/bootstrap.min.js\"  type=\"text/javascript\">\n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/FormularioRegistro.js\"></script>\n");
      out.write("        <script src=\"js/jquery.validate.min.js\"></script>\n");
      out.write("        <link href=\"js/jquery-3.2.1.min.js\"  type=\"text/javascript\">\n");
      out.write("        <link href=\"js/jquery.validate.min.js\"  type=\"text/javascript\">\n");
      out.write("        <link href=\"js/bootstrap.min.js\">\n");
      out.write("        <link href=\"js/FormularioRegistro.js\"  type=\"text/javascript\">\n");
      out.write("    </head>\n");
      out.write("     <body class=\"container-fluid\">\n");
      out.write("        <div class=\"barraInicio navbar navbar-default \" style=\"font-family:Mukta\">Monolith<img  class=\"logo\" src=\"img/logo.png\"></div>\n");
      out.write("         <div class=\"form-register\"  >\n");
      out.write("             ");

             HttpSession sesion = request.getSession();
             sesion.invalidate();
             
      out.write("\n");
      out.write("            <h2 class=\"form-titulo\">Usuario no Registrado</h2>\n");
      out.write("            <div class=\"contenedor-inputs container-fluid \">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-3\"  style=\"margin-right:3%;width:300px; \" >\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-3\" style=\"\">\n");
      out.write("                        <button  onclick=\"location.href='index.html'\" style=\"padding-left:42px;padding-right:42px;padding-top:12px;padding-bottom:12px;\">Inicio</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-3\" >\n");
      out.write("                        <button  onclick=\"location.href='registro.html'\"  style=\"padding-left:32px;padding-right:32px;padding-top:12px;padding-bottom:12px;\">Registrarse</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-3\" style=\"margin-left:3%;width:300px;\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
