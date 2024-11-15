package Modelo;
import java.sql.*;
import java.sql.DriverManager;

public class Conexion {
    
	   static String bd = "jbrain";
	   static String login = "root";
	   static String password = "";
	   static String url = "jdbc:mysql://localhost:3306/" + bd;

	   Connection con = null;

	   /** Constructor de DbConnection */
	   public Conexion() {
  
	      try{
	         con = DriverManager.getConnection(url,login,password);

	         if (con!=null){
	            System.out.println("Conecci�n a base de datos "+bd+" OK");
	         }
	      }catch(SQLException e){
	         System.out.println(e);
	      }catch(Exception e){
	         System.out.println(e);
	      }
	   }
	   /**Permite retornar la conexión*/
	   public Connection getConnection(){
	      return con;
	   }

	   public void desconectar(){
	      con = null;
	   }

	}
