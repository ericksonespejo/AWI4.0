/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author erickson
 */
public class Consultas extends Conexion{
    public boolean autenticacion(String usuario, String contraseña){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta ="select * from usuarios where usuario = ? and clave_usuario = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            rs = pst.executeQuery();
            if(rs.absolute(1)){
                return true;
            }
        }catch(Exception e){
            System.err.println("Error "+e);
        }finally{
                try{
                    if(getConexion() != null) getConexion().close();
                    if(pst != null) pst.close();
                    if(rs != null) rs.close();
                }catch(Exception e){
                    System.err.println("Error "+e);
                }
        }
        
        return false;
    }
    
    public boolean registrar(String nombre, String ap_paterno, String ap_materno,
            String correo_electronico, String usuario, String clave_usuario){
        PreparedStatement pst = null;
        try{
            String consulta = "insert into usuarios(nombre, ap_paterno, ap_materno, correo_electronico, usuario, clave_usuario) values(?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombre);
            pst.setString(2,ap_paterno);
            pst.setString(3, ap_materno);
            pst.setString(4, correo_electronico);
            pst.setString(5, usuario);
            pst.setString(6, clave_usuario);
            
            
            if(pst.executeUpdate()==1){
                return true;
            }
            
        }catch(Exception e){
            System.err.println("Error "+e);
        }finally{
            try{
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
            }catch(Exception ee){
              System.err.println("Error "+ee);  
            }
        }
        return false;
    }
    
}
