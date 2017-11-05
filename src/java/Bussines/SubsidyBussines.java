package Bussines;

import Entidades.EntSubsidies;
import Persistencia.DaosSubsidies;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import utilidades.Conexion;

/**
 * @author Jeison González Cifuentes
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

    public String deleteSubsidy(String id_subsidy) throws SQLException {
        if (id_subsidy == null || id_subsidy.isEmpty()) {
            return "<br> Por favor seleccione el subsidio que desea eliminar.";
        }
        conexion = Conexion.getCon();
        return dao.deleteSubsidy(conexion, Integer.parseInt(id_subsidy));
    }

    public String saveSubsidy(EntSubsidies subsidy) throws Exception {
        String info = "";
        
        if (subsidy.getName() == null || subsidy.getName().isEmpty()) {
            info += "<bt> Debe ingresar un nombre para el subsidio.";
        }
        if (subsidy.getDescription() == null || subsidy.getDescription().isEmpty()) {
            info += "<bt> Por favor agrege una descripción para el subsidio que desea guardar.";
        }
        if (subsidy.getStartDate() == null) {
            info += "<bt> Ingrese fecha en que comenzará a aplicar del subsidio.";
        }
        if (subsidy.getEndDate() == null) {
            info += "<bt> Ingrese fecha en que finaliza la asignación del subsidio.";
        }
        if (subsidy.getExpectedEnergyValue() == null) {
            info += "<bt> Debe ingresar un consumo de agua esperado.";
        }
        if (subsidy.getExpectedNaturalGasValue() == null) {
            info += "<bt> Debe ingresar un consumo de gas natural esperado.";
        }
        if (subsidy.getExpectedWaterValue() == null) {
            info += "<bt> Debe ingresar un consumo de agua esperado.";
        }
        if (subsidy.getType() <= 0) {
            info += "<bt> Por favor selecciones un tipo de subsidio.";
        }
        
        if (info.isEmpty()) {
            conexion = Conexion.getCon();
            if (subsidy.getIdSybsudy() > 0) {
                info = dao.updateSubsidy(conexion, subsidy);
            } else {
                List<EntSubsidies> subsidiesList = subsidiesList(subsidy);
                if (subsidiesList != null && !subsidiesList.isEmpty()) {
                    info += "Ya existe un registro con los datos ingresados";
                }
                info = dao.insertSubsidy(conexion, subsidy);
            }
        }
        
        return info;
    }
    
}
