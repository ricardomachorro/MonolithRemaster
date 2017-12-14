
package kerberosserver;

import java.util.*;

public class BoletoServicio {
    
     public ArrayList<String> CreacionArrays(String valor, String LlaveSesion, String Servicio) {
        HexEstandar hex = new HexEstandar();
        Des des = new Des();
        ArrayList<String> lista = new ArrayList<String>();
        String llaveSesionHex = hex.StringToHex(LlaveSesion);
        String llaveServicioHex = hex.StringToHex(Servicio);
        String valorcifrar = valor;
        String ValorRango = "";

        if (valor.length()>8) {
            for (int i = 1; i <= valor.length(); i++) {
                if (i == valor.length() || ValorRango.length() == 7) {
                    ValorRango = ValorRango + valor.charAt(i - 1);
                    String ValorRangoHex = hex.StringToHex(ValorRango);
                    String CifradoServicio = des.Cifrado(ValorRangoHex, llaveServicioHex);
                    String CifradoSesion = des.Cifrado(CifradoServicio, LlaveSesion);
                    lista.add(CifradoSesion);
                    ValorRango = "";
                } else {
                    ValorRango = ValorRango + valor.charAt(i - 1);
                }
            }
        } else {
            String ValorRangoHex = hex.StringToHex(valor);
            String CifradoServicio = des.Cifrado(ValorRangoHex, llaveServicioHex);
            String CifradoSesion = des.Cifrado(CifradoServicio, LlaveSesion);
            lista.add(CifradoSesion);
        }

        return lista;

    }
}
