package Bussines;

import Entidades.EntSubsidies;
import Persistencia.DaosSubsidies;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import utilidades.Conexion;

/**
- * @author Jeison González Cifuentes
 */
public class SubsidyBussines {
    
    DaosSubsidies dao;
    Connection conexion;

    public SubsidyBussines() {
        dao = new DaosSubsidies();
    }

    public List<EntSubsidies> subsidiesList (EntSubsidies subsidies) throws SQLException {
        try {
            conexion = Conexion.getCon();
            return (List<EntSubsidies>) dao.subsidiesList(conexion, subsidies);
        } catch (Exception e) {
            System.out.println("Error obteniendo listado de subsidios : " + e.getMessage());
            return null;
        }
    }

    public String deleteSubsidy(int id_subsidy) throws SQLException {
        conexion = Conexion.getCon();
        return dao.deleteSubsidy(conexion, id_subsidy);
    }

    public String insertSubsidy(EntSubsidies subsidy) throws Exception {
        String info = "";
        
        if (info.isEmpty()) {
            conexion = Conexion.getCon();
            info = dao.insertSubsidy(conexion, subsidy);
        }
        
        return info;
    }
    
}
