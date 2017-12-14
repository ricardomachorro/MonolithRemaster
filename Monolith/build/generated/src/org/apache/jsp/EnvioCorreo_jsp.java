package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import modelo.Email;

public final class EnvioCorreo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Proceso</title>\n");
      out.write("        <script>\n");
      out.write("            function Solicitar() {\n");
      out.write("                document.getElementById(\"alt\").submit();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div style=\"margin: auto;\">\n");
      out.write("            <img src=\"img/Procesando.gif\" alt=\"Procesando\" style=\"height: 150%; width: 150%; margin: auto; margin-left: 40%; margin-bottom: 50%;\">\n");
      out.write("        </div>\n");
      out.write("        ");


            /////////////////////////////////////////////////////
            String Nom = request.getParameter("nombre");
            String Insti = request.getParameter("institucion");
            String Estudios = request.getParameter("estudios");
            int Edad = Integer.parseInt(request.getParameter("edad"));
            String pais = request.getParameter("pais");
            String direccion = request.getParameter("direccion");
            String correo = request.getParameter("correo");
            String pass = request.getParameter("contra");
            /////////////////////////////////////////////////////

            Connection c = null;
            Statement sta = null;
            ResultSet r = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                r = sta.executeQuery("select * from Usuario where NombreUsuario = '" + Nom + "';");
                if (r.next()) {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Lo sentimos. El nombre de usuario que usted registro ya ha sido registrado, por favor intentelo de nuevo con un nombre de usuario diferente.\");\n");
      out.write("            window.location = 'registro.html';\n");
      out.write("        </script>\n");
      out.write("        ");

        } else {
            rs = sta.executeQuery("select * from Usuario where Correo = '" + correo + "';");
            if (rs.next()) {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Lo sentimos, pero alguien mas ya esta registrado con ese correo. Te aconsejamos busar a un abogado por si te estan robando la identidad\");\n");
      out.write("            window.location = 'registro.html';\n");
      out.write("        </script>\n");
      out.write("        ");

        } else {
            //Obtencion del adendum
            String calcular = Nom + correo;
            int hashCode = calcular.hashCode();
            int adendum;
            if (hashCode < 0) {
                adendum = hashCode * -1;
            } else {
                adendum = hashCode;
            }
            //System.out.println(hashCode);
            //System.out.println(adendum);

            /////////////////////////////////////////////////////
            Email email = new Email();

            String de = "hawkward.ipn@gmail.com";
            String clave = "TheH4wK_fl1l7*5";
            String para = correo;
            String mensaje = "Se ha enviado el siguiente código de verificación: " + adendum + ", por favor ingreselo en la página.\n\n" + "Si recibió este correo por equivocación por favor ignorelo.\n\n" + "Gracias.";
            String asunto = "Verificación de Correo Electrónico";

            /* 
                
                String[] direcciones = {"correo numero 1","correo numero 2","correo numero 3","correo ..."}
                boolean resultado = email.enviarCorreo(de, clave, direcciones, mensaje, asunto);
            
             */
            boolean resultado = email.enviarCorreo(de, clave, para, mensaje, asunto);

            if (resultado) {
              
                //out.print("CORREO ELECTRONICO CORRECTAMENTE ENVIADO....." + "\n\n" + "<a href='index.jsp'>VOLVER AL INDEX</a>");
        
      out.write("\n");
      out.write("        <form action=\"altaAdendum.jsp\" method=\"post\" name=\"alt\" id=\"alt\">\n");
      out.write("            <input type=\"password\" id=\"nombre\" name=\"nombre\" value=\"");
out.println(Nom);
      out.write("\" >\n");
      out.write("            <input type=\"password\" id=\"institucion\" name=\"institucion\" value=\"");
out.println(Insti);
      out.write("\">\n");
      out.write("            <input type=\"password\" id=\"estudios\" name=\"estudios\" value=\"");
out.println(Estudios);
      out.write("\">\n");
      out.write("            <input type=\"password\" id=\"numero\" name=\"edad\" value=\"");
out.println(Edad);
      out.write("\">\n");
      out.write("            <input type=\"password\" id=\"pais\" name=\"pais\" value=\"");
out.println(pais);
      out.write("\">\n");
      out.write("            <input type=\"password\" id=\"path\" name=\"direccion\" value=\"");
out.println(direccion);
      out.write("\">\n");
      out.write("            <input type=\"password\" id=\"correo\" name=\"correo\"  value=\"");
out.println(correo);
      out.write("\">\n");
      out.write("            <input type=\"password\" id=\"contra\" name=\"contra\" value=\"");
out.println(pass);
      out.write("\">\n");
      out.write("            <input type=\"password\" id=\"clav\" name=\"clav\" value=\"");
out.println(adendum);
      out.write("\" >\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script>Solicitar();</script>\n");
      out.write("        ");

        } else { //  out.print("CORREO ELECTRONICO NO ENVIADO....." + "\n\n" + "<a href='index.jsp'>VOLVER AL INDEX</a>");
        
      out.write("\n");
      out.write("\n");
      out.write("        <script> window.location = 'Error404.jsp';</script>\n");
      out.write("\n");
      out.write("        ");

                        }
                    }
                }
            } catch (SQLException error) {
                out.print(error.toString());
            }
        
      out.write("\n");
      out.write("        </body>\n");
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
