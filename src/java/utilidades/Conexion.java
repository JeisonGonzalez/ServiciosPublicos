package utilidades;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Juan Mesa
 */
public class Conexion {

    //Configuracion de los datos de la BD

    private final String usuario = "root";
    private final String pass = "123";
    private final String host = "localhost";
    private final String nombre_BD = "servicios_publicos";

    private Connection con = null;

    public Connection getCon() {
        getConexionMYSQL();
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Conexion() {
    }

    //Método que se devuelve la conexion o null si hubo un error
    public Connection getConexionMYSQL() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String servidor = "jdbc:mysql://" + host + "/" + nombre_BD;
            con = DriverManager.getConnection(servidor, usuario, pass);
            return con;
        } catch (Exception e) {
            e.printStackTrace();
            return con;
        }
    }

    public void cerrarBd() throws SQLException {
        this.con.close();
    }
}
