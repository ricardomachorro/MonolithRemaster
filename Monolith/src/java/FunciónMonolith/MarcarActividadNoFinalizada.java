/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "MarcarActividadNoFinalizada", urlPatterns = {"/MarcarActividadNoFinalizada"})
public class MarcarActividadNoFinalizada extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
       
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out=response.getWriter();
         DataBase db = null;
        try {
            db = new DataBase();
        } catch (ClassNotFoundException ex) {
           
        } catch (InstantiationException ex) {
            out.print(ex.toString());
        } catch (IllegalAccessException ex) {
                        out.print(ex.toString());
        } catch (SQLException ex) {
                      out.print(ex.toString());
        }

        try {
            HttpSession sesion = request.getSession();
            String identificador=request.getParameter("IdentificadorCambio");
             db.CambiarActividadNoFinalizada(identificador);
             response.sendRedirect("Actividades.jsp");
            
        } catch (Exception ex) {
              out.print(ex.toString() +"Clase Cambio error");
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
