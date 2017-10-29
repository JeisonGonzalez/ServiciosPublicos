/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Persistencia;

import Entidades.EntSubsidies;
import utilidades.ConBD1;
import java.sql.*;
import java.util.List;

public class ReportController extends ConBD1{
    private int start_date;
    private String end_date;
    private ResultSet resultado;

    public ReportController()
    {
        getConexionMysql();
    }

    public List<EntSubsidies> Listado()throws Exception
    {
            try{
                getStmt();
                resultado = stmt.executeQuery("select * from subsidies");
                EntSubsidies sub = new EntSubsidies();
                List<EntSubsidies> listSub = null;
                        
                while (resultado.next()) {
                    sub.setEnergy_subsidy(resultado.getString(1));
                    sub.setId_subsidy(resultado.getString(0));
                    listSub.add(sub);
                }
                
                return listSub;
            } catch (Exception ex){
                System.err.println("SQLException: " + ex.getMessage());
                return null;
           }
    }
    
}

