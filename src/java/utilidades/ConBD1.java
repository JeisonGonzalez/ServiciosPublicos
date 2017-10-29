package utilidades;

import java.sql.Connection; //conexion java con Myql
import java.sql.DriverManager; //Para reconocer la libreria Myql
import java.sql.SQLException;// permite mostrar los posibles errores que puedan ocurrir con la conexion, tablas, bd en Mysql.
import java.sql.Statement;

public class ConBD1 {

    public Statement stmt;

    public ConBD1() {
    }

    public static Connection getConexionMysql() {

        Connection conectar = null;

        try {

            String url = "jdbc:mysql://localhost/servicios_publicos";
            String usuario = "root";
            String contraseña = "";
            Class.forName("com.mysql.jdbc.Driver"); //conector que debe buscar para la conexion
            conectar = DriverManager.getConnection(url, usuario, contraseña);
            System.out.println("Conecction OK");

        } catch (ClassNotFoundException | SQLException e) { // sino del try
            // sino del try
            System.out.println("Conection Fallida");
        } finally {
            return conectar;
        }
    }

    public static void main(String[] args) {
        ConBD1.getConexionMysql(); // instanciar la clase

    }

    public Statement getStmt() {
        return this.stmt;
    }

}
