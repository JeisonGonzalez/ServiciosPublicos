package Persistencia;

import Entidades.EntSubsidies;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


/**
 *
 * @author Juan Mesa
 */
public class DaosSubsidies {

    public DaosSubsidies() {
        DaosSubsidies daoHog;
    }
    
    //Metodo cargar lista
    public List<EntSubsidies> listar(Connection con) {
        List<EntSubsidies> resul = new ArrayList<EntSubsidies>();
        try {
            PreparedStatement consAct = con.prepareStatement("SELECT * FROM homes");
            ResultSet result = consAct.executeQuery();

            while (result.next()) {
                EntSubsidies subsidies = new EntSubsidies();
                subsidies.setId_subsidy(result.getString(1));
                subsidies.setEnergy_subsidy(result.getString(2));
                subsidies.setGas_subsidy(result.getString(3));
                subsidies.setWater_subsidy(result.getString(4));
                subsidies.setId_param_subsidy(result.getString(5));
                resul.add(subsidies);
            }//Fin while
        } catch (SQLException ex) {
            Logger.getLogger(DaosSubsidies.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (Exception e) {
            }//Fin Try/catch
        }//Fin Try/catch/finally
        return resul;
    }//fin cargar lista
    
    //Guardar
    public String insertarSubsidio(Connection con, String Id_subsidy, String Energy_subsidy, String Gas_subsidy, String water_subsidy, String Id_param_subsidy) {
        String respuesta;
        try {
            PreparedStatement insert = con.prepareStatement("INSERT INTO `subsidies` (`Id_subsidy`, `Energy_subsidy`, `Gas_subsidy`, `water_subsidy`, `Id_param_subsidy`) VALUES (?,?,?,?,?)");
            insert.setString(1, Id_subsidy);
            insert.setString(2, Energy_subsidy);
            insert.setString(3, Gas_subsidy);
            insert.setString(4, water_subsidy);
            insert.setString(5, Id_param_subsidy);
            //JOptionPane.showMessageDialog(null, insert);
            int result = insert.executeUpdate();
            //JOptionPane.showMessageDialog(null, insert);
            respuesta = "Subsidio registrado";
            JOptionPane.showMessageDialog(null, respuesta);
        } catch (Exception e) {
            respuesta = "Subsidio no registrado";
            JOptionPane.showMessageDialog(null, respuesta);
        } finally {
 
            try {
                con.close();
            } catch (Exception e) {
            }//fin try/catch
        }///fin try/catch/finally
        return respuesta;
    }//fin Guardar
      
    public static boolean saveSubsidy (Connection con,String agua1, String elct1){
        return true;
    }
}
