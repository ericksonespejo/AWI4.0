/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author erickson
 */
public class Conexion {
    // atributos de sesión
   private String username = "root";
   private String password = "";
   private String host = "localhost";
   private String port = "3306";
   private String database ="seguridad";
   private String classname = "com.mysql.jdbc.Driver";
   private String url = "jdbc:mysql://"+host+":"+port+"/"+database;
   private Connection con;
  
   public Conexion(){
       try{
           Class.forName(classname);
           con = (Connection) DriverManager.getConnection(url, username, password);
           System.out.println("Conexion Exitosa!");
       }catch(ClassNotFoundException e){
           System.err.println("ERROR "+e);
       }catch(SQLException e){
           System.err.println("Error "+e);
       }
   }
   
   public Connection getConexion(){
       return con;
   }
    public static void main(String[] args) {
        Conexion cpn = new Conexion();
    }
    
}
