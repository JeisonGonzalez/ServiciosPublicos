package Persistencia;

import Entidades.EntSubsidies;
import java.util.Date;

/**
 * @author Jeison Gonz[alez Cifuentes
 */

public class SQLHelpers {
    
    //-------------------------------------- Subsidy --------------------------------------
    public static String getSubsidyById(int id_subsidy) {
        if (id_subsidy == -1) {
            return "SELECT * FROM subsidy ORDER BY name";
        } else {
            return "SELECT * FROM subsidy WHERE idsubsidy = '" + id_subsidy + " ORDER BY name";        
        }
    }

    public static String getSubsidy(int id_subsidy, Date startDate, Date endDate, String name, String description, 
            Double expectedWaterValue, Double expectedEnergyValue, Double expectedNaturalGasValue, int type){
        String query = "SELECT * FROM subsidy WHERE 1=1";
        if (id_subsidy > 0) {
            query += " AND idsubsidy = " + id_subsidy;            
        }
        if (startDate != null) {
            query += " AND startDate = " + startDate;             
        }
        if (endDate != null) {
            query += " AND endDate = " + endDate;             
        }
        if (name != null && !name.isEmpty()) {
            query += " AND name = " + name;             
        }
        if (description != null && !description.isEmpty()) {
            query += " AND description = " + description;             
        }
        if (expectedWaterValue != null) {
            query += " AND expectedWaterValue = " + expectedWaterValue;
        }
        if (expectedEnergyValue != null) {
            query += " AND expectedEnergyValue = " + expectedEnergyValue;
        }
        if (expectedNaturalGasValue != null) {
            query += " AND expectedNaturalGasValue = " + expectedNaturalGasValue;
        }
        if (type > 0) {
            query += " AND type = " + type;             
        }
        return query;
    }
    
    public static String updateSubsidy (){
        return "UPDATE subsidy SET startDate = ?, endDate = ?, name = ?, description = ?, expectedWaterValue = ?, expectedEnergyValue = ?, expectedNaturalGasValue = ?, type = ? WHERE idsubsidy = ?";
    }

    public static String insertSubsidy() {
        return "INSERT INTO subsidy (idsubsidy, startDate, endDate, name, description, expectedWaterValue, expectedEnergyValue, expectedNaturalGasValue, type)"
                + " VALUES (?,?,?,?,?,?,?,?,?)";
    }

    public static String deleteSubsidy(int id_subsidy) {
        return "DELETE FROM subsidy WHERE idsubsidy = '" + id_subsidy + "'";
    }
    
}
