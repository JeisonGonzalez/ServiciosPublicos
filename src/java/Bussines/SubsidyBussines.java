package Bussines;

import Persistencia.DaosSubsidies;
import java.sql.Connection;
import java.util.List;
import utilidades.ConBD1;
import utilidades.Conexion;

/**
 * @author Jeison
 */
public class SubsidyBussines {
    
    public static DaosSubsidies doSubsidies;
    static Connection c;
    public SubsidyBussines() {
        doSubsidies = new DaosSubsidies();
    }
    
    public static String saveSubsidy(String agua1, String elct1){
        String mensaje = "";
        try {
            c = new ConBD1().getConexionMysql();
            doSubsidies = new DaosSubsidies();
            if (doSubsidies.saveSubsidy(c, agua1, elct1)) {
                mensaje = "Subsidio calculado correctamente";
            } else {
                mensaje = "Ocurrió un error calculando el subsidio";
            }
        } catch (Exception e) {
            mensaje = "Ocurrió un error calculando el subsidio";
        }
        return mensaje;
    }
    
}
