
package Persistencia;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utilidades.ConBD1;

public class Consultas extends ConBD1 {
    
   public boolean autenticacion(String usuario, String contraseña){
    PreparedStatement pst = null;
       ResultSet rs = null;
       
       try {
          String consulta = "select * from users where name_user = ? and password_user = ?";
          pst = getConexionMysql().prepareStatement(consulta);
          pst.setString(1, usuario);
          pst.setString(2, contraseña);
          
          rs = pst.executeQuery();
          
          if(rs.absolute(1)){
              return true;
          }
       } catch (Exception e) {
           System.err.println("Error"+e);
       }finally{
           try {
               if(getConexionMysql() != null) getConexionMysql().close();
               if(pst != null) pst.close();
               if(rs != null) rs.close();
           } catch (Exception e) {
                System.err.println("Error"+e);
           }
         }  
       
       
      return false;   
   } 
   
  /*  public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.autenticacion("Esteban", "1234"));
    }*/
   
   public boolean registrar(String id_user, String id_profile_user, String name_user, String password_user){
     
       PreparedStatement pst = null;
       
       try {
           String consulta = "insert into users (id_user, id_profile_user, name_user, password_user) values(?,?,?,?)";
           pst = getConexionMysql().prepareStatement(consulta);
           pst.setString(1, id_user);
           pst.setString(2, id_profile_user);
           pst.setString(3, name_user);
           pst.setString(4, password_user);
           if(pst.executeUpdate() == 1){
               return true;
           }
       } catch (Exception ex) {
          System.err.println("Error"+ex);
       }finally{
           try {
             if(getConexionMysql() != null) getConexionMysql().close();
             if(pst != null) pst.close();
           } catch (Exception e) {
               System.err.println("Error"+e);
           }
       }
       return false;
   }
   
   
  /*  public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.registrar("3", "1", "Juan", "1234"));
      
    }*/

    
    }

