package permisosserver;

import java.net.*;
import java.io.*;
import java.math.BigInteger;
import java.sql.*;
import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.Date;

public class Server {

    ServerSocket server;
    static String ClaveServicioServer = "Server";
    static final int PUERTO1 = 4000;
    Socket socket;
    ObjectInputStream entrada;
    ObjectOutputStream salida;
    String usuario = "root";
    String driver = "com.mysql.jdbc.Driver";
    String ruta = "jdbc:mysql://localhost/Servicios";
    String clave = "n0m3l0";
    Connection c = null;
    Statement st = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void conexion() {
        try {
            boolean confirmacion4 = false;
            server = new ServerSocket(PUERTO1);
            
            while (true) {
                socket = server.accept();
                entrada = new ObjectInputStream(socket.getInputStream());
                salida = new ObjectOutputStream(socket.getOutputStream());
                String opccion = entrada.readUTF();
                if (opccion.equalsIgnoreCase("1")) {
                    try {
                        Class.forName(driver).newInstance();
                        c = DriverManager.getConnection(ruta, usuario, clave);
                        st = c.createStatement();
                        Des des = new Des();
                        HexEstandar hex = new HexEstandar();
                        ArrayList<String> UsuarioTicketServicio = (ArrayList<String>) entrada.readObject();
                        ArrayList<String> ServicioTicketServicio = (ArrayList<String>) entrada.readObject();
                        ArrayList<String> IPUsuarioTicketServicio = (ArrayList<String>) entrada.readObject();

                        for (int i = 0; i < UsuarioTicketServicio.size(); i++) {
                            String DatoADescifrar = UsuarioTicketServicio.get(i);
                            String DatoDescifrado = des.DesCifrado(DatoADescifrar, hex.StringToHex(ClaveServicioServer));
                            String DatoAString = hex.HexToString(DatoDescifrado);
                            UsuarioTicketServicio.set(i, DatoAString);
                        }

                        for (int i = 0; i < ServicioTicketServicio.size(); i++) {
                            String DatoADescifrar = ServicioTicketServicio.get(i);
                            String DatoDescifrado = des.DesCifrado(DatoADescifrar, hex.StringToHex(ClaveServicioServer));
                            String DatoAString = hex.HexToString(DatoDescifrado);
                            ServicioTicketServicio.set(i, DatoAString);
                        }

                        for (int i = 0; i < IPUsuarioTicketServicio.size(); i++) {
                            String DatoADescifrar = IPUsuarioTicketServicio.get(i);
                            String DatoDescifrado = des.DesCifrado(DatoADescifrar, hex.StringToHex(ClaveServicioServer));
                            String DatoAString = hex.HexToString(DatoDescifrado);
                            IPUsuarioTicketServicio.set(i, DatoAString);
                        }

                        String LlaveServicioDescipher = des.DesCifrado(entrada.readUTF(), hex.StringToHex(ClaveServicioServer));

                        ArrayList<String> UsuarioIdentidadServicio = (ArrayList<String>) entrada.readObject();
                        ArrayList<String> ServicioIdentidadServicio = (ArrayList<String>) entrada.readObject();
                        ArrayList<String> IPUsuarioIdentidadServicio = (ArrayList<String>) entrada.readObject();

                        for (int i = 0; i < UsuarioIdentidadServicio.size(); i++) {
                            String DatoADescifrar = UsuarioIdentidadServicio.get(i);
                            String DatoDescifrado = des.DesCifrado(DatoADescifrar, LlaveServicioDescipher);
                            String DatoAString = hex.HexToString(DatoDescifrado);
                            UsuarioIdentidadServicio.set(i, DatoAString);
                        }

                        for (int i = 0; i < ServicioIdentidadServicio.size(); i++) {
                            String DatoADescifrar = ServicioIdentidadServicio.get(i);
                            String DatoDescifrado = des.DesCifrado(DatoADescifrar, LlaveServicioDescipher);
                            String DatoAString = hex.HexToString(DatoDescifrado);
                            ServicioIdentidadServicio.set(i, DatoAString);
                        }

                        for (int i = 0; i < IPUsuarioIdentidadServicio.size(); i++) {
                            String DatoADescifrar = IPUsuarioIdentidadServicio.get(i);
                            String DatoDescifrado = des.DesCifrado(DatoADescifrar, LlaveServicioDescipher);
                            String DatoAString = hex.HexToString(DatoDescifrado);
                            IPUsuarioIdentidadServicio.set(i, DatoAString);
                        }

                        String UsuarioTicket = String.join("", UsuarioTicketServicio);
                        String ServicioTicket = String.join("", ServicioTicketServicio);
                        String IPTicket = String.join("", IPUsuarioTicketServicio);
                        String UsuarioIdentidad = String.join("", UsuarioIdentidadServicio);
                        String ServicioIdentidad = String.join("", ServicioIdentidadServicio);
                        String IPIdentidad = String.join("", IPUsuarioIdentidadServicio);

                        if (UsuarioTicket.equalsIgnoreCase(UsuarioIdentidad) && ServicioTicket.equalsIgnoreCase(ServicioIdentidad)) {
                            if (IPTicket.equalsIgnoreCase(IPIdentidad)) {
                                String sql = "select * from  Servicios where NombreServicio=?";
                                ps = c.prepareStatement(sql);
                                ps.setString(1,ServicioIdentidad);
                                rs = ps.executeQuery();
                                if (rs.next()) {
                                    confirmacion4 = true;
                                    salida.writeBoolean(confirmacion4);
                                    salida.flush();
                                    socket.close();
                                }
                            } else {
                                salida.writeBoolean(confirmacion4);
                                 socket.close();
                            }
                        } else {
                            salida.writeBoolean(confirmacion4);
                             socket.close();
                        }
                    } catch (Exception ex) {

                    }
                }
            }
        } catch (Exception ex) {

        }
    }

}
