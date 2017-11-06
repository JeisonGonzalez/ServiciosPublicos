package Persistencia;

import Entidades.EntSubsidies;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Jeison González Cifuentes
 */
public class DaosSubsidies {

    public String deleteSubsidy(Connection conection, int id_subsidy) {
        String info = "";
        try {
            PreparedStatement stm = conection.prepareStatement(SQLHelpers.deleteSubsidy(id_subsidy));
            stm.execute();
            info = "Registro borrado exitosamente";
        } catch (Exception e) {
            info = "Error intentando borrar el subsidio con código : " + id_subsidy;
            System.out.println("Error intentando borrar el subsidio con código : " + id_subsidy + "\n Error : " + e.getMessage());
        }
        return info;
    }

    public List<EntSubsidies> subsidiesList(Connection conexion, EntSubsidies subsidies) {
        List<EntSubsidies> list = new ArrayList<>();
        try {
            PreparedStatement stm = conexion.prepareStatement(
                    SQLHelpers.getSubsidy(subsidies.getIdSybsudy(), subsidies.getStartDate(), subsidies.getEndDate(), 
                            subsidies.getName(), subsidies.getDescription(), subsidies.getExpectedWaterValue(), 
                            subsidies.getExpectedEnergyValue(), subsidies.getExpectedNaturalGasValue(), 
                            subsidies.getType()));
            ResultSet rc = stm.executeQuery();
            while (rc.next()) {
                EntSubsidies subsidy = new EntSubsidies();
                subsidy.setIdSybsudy(rc.getInt(1));
                subsidy.setStartDate(rc.getDate(2));
                subsidy.setEndDate(rc.getDate(3));
                subsidy.setName(rc.getString(4));
                subsidy.setDescription(rc.getString(5));
                subsidy.setExpectedWaterValue(rc.getDouble(6));
                subsidy.setExpectedEnergyValue(rc.getDouble(7));
                subsidy.setExpectedNaturalGasValue(rc.getDouble(8));
                subsidy.setType(rc.getInt(9));
                list.add(subsidy);
            }
        } catch (Exception e) {
            System.out.println("Error en DaoSubsidies / subsidiesList : " + e.getMessage());
        }
        return list;
    }

    public String insertSubsidy(Connection conexion, EntSubsidies subsidy) {
        String info = "";
        try {
            PreparedStatement stm = conexion.prepareStatement(SQLHelpers.insertSubsidy());
            stm.setDate(1, subsidy.getStartDate());
            stm.setDate(2, subsidy.getEndDate());
            stm.setString(3, subsidy.getName());
            stm.setString(4, subsidy.getDescription());
            stm.setDouble(5, subsidy.getExpectedWaterValue());
            stm.setDouble(6, subsidy.getExpectedEnergyValue());
            stm.setDouble(7, subsidy.getExpectedNaturalGasValue());
            stm.setInt(8, subsidy.getType());
            stm.execute();
            if (stm.getUpdateCount() > 0) {
                info = "Subsidio '" + subsidy.getName() + "' guardado exitosamente";
            } else {
                info = "Error intentando guardar el subsidio : " + subsidy.getName();
            }
        } catch (Exception e) {
            System.out.println("Error intentando guardar subsidio : " + e.getMessage());
        }
        return info;
    }

    public String updateSubsidy(Connection conexion, EntSubsidies subsidy) {
        String info = "";
        try {
            PreparedStatement stm = conexion.prepareStatement(SQLHelpers.updateSubsidy());
            stm.setDate(1, subsidy.getStartDate());
            stm.setDate(2, subsidy.getEndDate());
            stm.setString(3, subsidy.getName());
            stm.setString(4, subsidy.getDescription());
            stm.setDouble(5, subsidy.getExpectedWaterValue());
            stm.setDouble(6, subsidy.getExpectedEnergyValue());
            stm.setDouble(7, subsidy.getExpectedNaturalGasValue());
            stm.setInt(8, subsidy.getType());
            stm.setInt(9, subsidy.getIdSybsudy());
            stm.execute();
            if (stm.getUpdateCount() > 0) {
                info = "Subsidio '" + subsidy.getName() + "' editado exitosamente";
            } else {
                info = "Error intentando editar el subsidio : " + subsidy.getName();
            }
        } catch (Exception e) {
            System.out.println("Error intentando guardar subsidio : " + e.getMessage());
        }
        return info;
    }
}
