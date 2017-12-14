/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kerberosserver;

import java.net.*;
import java.io.*;
import java.math.BigInteger;
import java.sql.*;
import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.Date;

public class Server {

    ServerSocket server;

    String NombreKCD = "KCDMON";
    static String ClaveKCD = "5IM6";
    static String ClaveServicioServer = "Server";
    Socket socket;
    int puerto = 5000;
    ObjectInputStream entrada;
    ObjectOutputStream salida;
    String usuario = "root";
    String driver = "com.mysql.jdbc.Driver";
    String ruta = "jdbc:mysql://localhost/ServerTicket";
    String clave = "n0m3l0";
    Connection c = null;
    Statement st = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void conexion() {
        try {
            server = new ServerSocket(puerto);
           
            while (true) {
                  socket = server.accept();
                entrada = new ObjectInputStream(socket.getInputStream());
                salida = new ObjectOutputStream(socket.getOutputStream());
                String opccion = entrada.readUTF();
                if (opccion.equalsIgnoreCase("1")) {
                    String NombreUsuario = entrada.readUTF();
                    String Contra = entrada.readUTF();
                    String IDMaquinaCliente = entrada.readUTF();
                    Hash boletin = new Hash();
                    try {
                        Class.forName(driver).newInstance();
                        c = DriverManager.getConnection(ruta, usuario, clave);
                        st = c.createStatement();
                        String sql = "insert into UsuarioTicket(NombreUsuario,Contra,IPCliente) values (?,?,?);";
                        ps = c.prepareStatement(sql);
                        ps.setString(1, NombreUsuario);
                        ps.setString(2, Contra);
                        ps.setString(3, IDMaquinaCliente);
                        ps.execute();
                        c.close();
                        salida.writeBoolean(true);
                        salida.flush();

                    } catch (SQLException ex) {
                        System.out.println(ex.toString());

                    }
                } else if (opccion.equalsIgnoreCase("2")) {
                    //Parametros de Confirmacion Identidad de usuario
                    boolean confirmacion1 = false;
                    boolean confirmacion2 = false;
                    String NombreUsuario = entrada.readUTF();
                    String NombreCifrado = entrada.readUTF();
                    String IDMaquinaCliente = entrada.readUTF();
                    String contraUser = "";
                    String IPCliente = "";
                    Class.forName(driver).newInstance();
                    c = DriverManager.getConnection(ruta, usuario, clave);
                    st = c.createStatement();
                    //Buscar Usuario en la Base de Datos
                    String sql = "select * from  UsuarioTicket where NombreUsuario=? and IPCliente=?";
                    ps = c.prepareStatement(sql);
                    ps.setString(1, NombreUsuario);
                    ps.setString(2, IDMaquinaCliente);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        confirmacion1 = true;
                        contraUser = rs.getString("Contra");
                        IPCliente = rs.getString("IPCliente");
                        Hash tabla = new Hash();
                        String cifrado = tabla.RectificarCifrado(NombreUsuario, contraUser);
                        //Comparacion del Usuario 
                        if (cifrado.equalsIgnoreCase(NombreCifrado)) {
                            confirmacion2 = true;

                            //Creacion llave de Sesion
                            Date fecha = new Date();
                            String Hora = Long.toString(fecha.getHours());
                            String Minuto = Long.toString(fecha.getMinutes());
                            String Segundo = Long.toString(fecha.getSeconds());
                            String Dia = Long.toString(fecha.getDate());
                            String Mes = Long.toString(fecha.getMonth() + 1);
                            String valor = Hora + Minuto + Segundo + Dia;
                            HexEstandar hex = new HexEstandar();
                            Des des = new Des();
                            String valor2 = hex.StringToHex(valor);
                            String valor3 = IPCliente.replace(".", "");
                            String[] listanumIp = valor3.split("");
                            int num = 0;
                            for (int i = 0; i < listanumIp.length; i++) {
                                num += Integer.parseInt(listanumIp[i]);
                            }
                            String IPHex = hex.StringToHex(Integer.toString(num));
                            String llaveSesion = des.Cifrado(valor2, IPHex);

                            //Fin creacion llave de Sesion
                            //Creacion del Boleto deSesion
                            BoletoSesion TicketSesion = new BoletoSesion();
                            ArrayList<String> NombreUser = TicketSesion.CreacionArrays(NombreUsuario, contraUser, ClaveKCD);
                            ArrayList<String> NombreKDC = TicketSesion.CreacionArrays(NombreKCD, contraUser, ClaveKCD);
                            ArrayList<String> IPUser = TicketSesion.CreacionArrays(IPCliente, contraUser, ClaveKCD);
                            String ContraUserCipher = hex.StringToHex(contraUser);
                            String llaveSesionUserCipher = des.Cifrado(llaveSesion, ContraUserCipher);
                            //Fin Creacion Boleto
                            //Envio Elementos Boleto Sesion
                            salida.writeBoolean(confirmacion1);
                            salida.writeBoolean(confirmacion2);
                            salida.writeObject(NombreUser);
                            salida.writeObject(NombreKDC);
                            salida.writeObject(IPUser);
                            salida.writeUTF(llaveSesionUserCipher);
                            salida.flush();
                            //Fin Envio Elementos Boleto Sesion

                            //Entrada de Elementos de Boleto Sesion del Cliente
                            ArrayList<String> UserTicketConfirmacion = (ArrayList<String>) entrada.readObject();
                            ArrayList<String> KDCNameTicketConfirmacion = (ArrayList<String>) entrada.readObject();
                            ArrayList<String> IPUserNameTicketConfirmacion = (ArrayList<String>) entrada.readObject();
                            //Fin de Entrada de Elementos de Boleto Sesion del Cliente
                            //Entrada de Elmentos Confirmacion
                            ArrayList<String> UserSesion = (ArrayList<String>) entrada.readObject();
                            ArrayList<String> IPUserSesion = (ArrayList<String>) entrada.readObject();
                            Date fechaBoletoSesion = (Date) entrada.readObject();
                            //Fin Elementoa Confirmacion

                            //Entrada Servicio usuario
                            String ServicioUsuario = entrada.readUTF();
                            //Fin  Entrada Servicio usuario

                            String KDCDesCipher = hex.StringToHex(ClaveKCD);

                            //Descifrado de Datos-Boleto con Cifrado del KDC
                            for (int i = 0; i < UserTicketConfirmacion.size(); i++) {
                                String DatoADescifrar = UserTicketConfirmacion.get(i);
                                String DatoDescifrado = des.DesCifrado(DatoADescifrar, KDCDesCipher);
                                String DatoAString = hex.HexToString(DatoDescifrado);
                                UserTicketConfirmacion.set(i, DatoAString);
                            }

                            for (int i = 0; i < KDCNameTicketConfirmacion.size(); i++) {
                                String DatoADescifrar = KDCNameTicketConfirmacion.get(i);
                                String DatoDescifrado = des.DesCifrado(DatoADescifrar, KDCDesCipher);
                                String DatoAString = hex.HexToString(DatoDescifrado);
                                KDCNameTicketConfirmacion.set(i, DatoAString);
                            }

                            for (int i = 0; i < IPUserNameTicketConfirmacion.size(); i++) {
                                String DatoADescifrar = IPUserNameTicketConfirmacion.get(i);
                                String DatoDescifrado = des.DesCifrado(DatoADescifrar, KDCDesCipher);
                                String DatoAString = hex.HexToString(DatoDescifrado);
                                IPUserNameTicketConfirmacion.set(i, DatoAString);
                            }

                            //Fin Descifrado de Datos-Boleto con Cifrado del KDC
                            //Descifrado de Datos-Secion con Cifrado delSecion
                            for (int i = 0; i < UserSesion.size(); i++) {
                                String DatoADescifrar = UserSesion.get(i);
                                String DatoDescifrado = des.DesCifrado(DatoADescifrar, llaveSesion);
                                String DatoAString = hex.HexToString(DatoDescifrado);
                                UserSesion.set(i, DatoAString);
                            }

                            for (int i = 0; i < IPUserSesion.size(); i++) {
                                String DatoADescifrar = IPUserSesion.get(i);
                                String DatoDescifrado = des.DesCifrado(DatoADescifrar, llaveSesion);
                                String DatoAString = hex.HexToString(DatoDescifrado);
                                IPUserSesion.set(i, DatoAString);
                            }
                            // Fin Descifrado de Datos-Secion con Cifrado delSecion
                            String UsuarioTicketKDC = String.join("", UserTicketConfirmacion);
                            String KDCTicketKDC = String.join("", KDCNameTicketConfirmacion);
                            String IPUsuarioTicketKDC = String.join("", IPUserNameTicketConfirmacion);
                            String UsuarioSecion = String.join("", UserSesion);
                            String IPUsuarioSesion = String.join("", IPUserSesion);
                            boolean confirmacion3 = false;
                            long minutos = fechaBoletoSesion.getTime() - fecha.getTime();
                            if ((UsuarioTicketKDC.equals(UsuarioSecion)) && (IPUsuarioTicketKDC.equals(IPUsuarioSesion))) {
                                if (KDCTicketKDC.equals(NombreKCD) && (minutos <= 50000)) {
                                    confirmacion3 = true;
                                    //Creacion llave de Servicio
                                    String PrellaveServicio = Dia + Hora + Minuto + Segundo;
                                    String PrellaveServicioHex = hex.StringToHex(PrellaveServicio);
                                    String IPllaveServicioHex = IPUsuarioTicketKDC.replace(".", "");
                                    String[] listanumIpServicio = IPllaveServicioHex.split("");
                                    int numTikcetServicio = 0;
                                    for (int i = 0; i < listanumIpServicio.length; i++) {
                                        numTikcetServicio += Integer.parseInt(listanumIpServicio[i]);
                                    }
                                    String IPHexServicio = hex.StringToHex(Integer.toString(numTikcetServicio));
                                    String llaveServicio = des.Cifrado(PrellaveServicioHex, IPHexServicio);
                                    //Fin Creacion llave de Servicio
                                     //CIfrado de elementos del ticket de Servicio 
                                    BoletoServicio TicketServicio = new BoletoServicio();
                                    ArrayList<String> UsuarioTicketServicio =TicketServicio.CreacionArrays(UsuarioTicketKDC,llaveSesion,ClaveServicioServer);
                                    ArrayList<String> ServicioTicketServicio =TicketServicio.CreacionArrays(ServicioUsuario,llaveSesion, ClaveServicioServer);
                                    ArrayList<String> IPUsuarioTicketServicio =TicketServicio.CreacionArrays(IPUsuarioTicketKDC, llaveSesion,ClaveServicioServer);
                                    String llaveServicioCipherServicio=des.Cifrado(llaveServicio,hex.StringToHex(ClaveServicioServer));
                                    String llaveServicioCipherSesion=des.Cifrado(llaveServicioCipherServicio,llaveSesion);
                                    String llaveServicioReferenciaCipherSesion=des.Cifrado(llaveServicio,llaveSesion);
                                    //Fin CIfrado de elementos del ticket de Servic
                                    
                                    //Envio de Datos
                                    salida.writeBoolean(confirmacion3);
                                    salida.writeObject(UsuarioTicketServicio);
                                    salida.writeObject(ServicioTicketServicio);
                                    salida.writeObject(IPUsuarioTicketServicio);
                                    salida.writeUTF(llaveServicioCipherSesion);
                                    salida.flush();
                                    salida.writeUTF(llaveServicioReferenciaCipherSesion);
                                     salida.flush();
                                    socket.close();
                                    //Fin Envio de Datos
                                } else {
                                    salida.writeBoolean(confirmacion3);
                                     socket.close();
                                }
                            } else {
                                salida.writeBoolean(confirmacion3);
                                 socket.close();
                            }

                        } else {
                            salida.writeBoolean(confirmacion1);
                            salida.writeBoolean(confirmacion2);
                             socket.close();
                        }
                    } else {
                        salida.writeBoolean(confirmacion1);
                        salida.writeBoolean(confirmacion2);
                         socket.close();
                    }

                }

            }
        } catch (Exception ex) {
            System.out.println(ex.toString());
        }
    }

}
