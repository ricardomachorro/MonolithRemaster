<%-- 
    Document   : altaAdendum
    Created on : 28/11/2017, 07:42:37 AM
    Author     : Alumno
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta</title>
        <script>
            function Solicitar() {
                document.getElementById("soli").submit();
            }
        </script>
    </head>
    <body>
        <div style="margin: auto;">
            <img src="img/Procesando.gif" alt="Procesando" style="height: 150%; width: 150%; margin: auto; margin-left: 40%; margin-bottom: 50%;">
        </div>
        <%
            /////////////////////////////////////////////////////
           
            HttpSession sesion = request.getSession();
            String Nom =sesion.getAttribute("NombreUser").toString();
            String Insti =sesion.getAttribute("InstitucionUser").toString();
            String Estudios = sesion.getAttribute("EstudiosUser").toString();
            int Edad = Integer.parseInt(sesion.getAttribute("EdadUser").toString());
            String pais = sesion.getAttribute("PaisUser").toString();
            String direccion = sesion.getAttribute("PaisUser").toString();
            String correo = sesion.getAttribute("CorreoUser").toString();
            String pass = sesion.getAttribute("CorreoUser").toString();
            String Cod = sesion.getAttribute("ClaveUser").toString();
            
            /*
            String Nom = request.getParameter("nombre");
            String Insti = request.getParameter("institucion");
            String Estudios = request.getParameter("estudios");
            int Edad = Integer.parseInt(request.getParameter("edad"));
            String pais = request.getParameter("pais");
            String direccion = request.getParameter("direccion");
            String correo = request.getParameter("correo");
            String pass = request.getParameter("contra");*/
            /////////////////////////////////////////////////////

           
            Connection c = null;
            Statement sta = null;
            ResultSet r = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                
                sta.executeUpdate("insert into Validacion (Nombre,adendum) values ('" + Nom + "','" + Cod + "');");
               // sta.executeUpdate("insert into Usuario(NombreUsuario,Institucion,Correo,Edad,NivelEstudio,Pais,Direccion,Contrasena,Autenticado) values('" + Nom + "','" + Insti + "','" + correo + "'," + Edad + ",'" + Estudios + "','" + pais + "','" + direccion + "','" + pass + "','No');");
                

//out.print("<script> cierra(); </script>");
        %>
        <form action="SolicitarCodigo.jsp" method="post" name="soli" id="soli">
            <input type="password" id="correo" name="correo"  value="<%out.println(correo);%>">
        </form>
        <script>Solicitar();</script>
        <%
           } catch (SQLException error) {
                out.print(error.toString());
            }
            c.close();

            //out.println("<script>window.location='registro.html';</script>");

        %>
       
        
    </body>
</html>
