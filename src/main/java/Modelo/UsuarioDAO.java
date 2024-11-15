/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.*;
import Controlador.Controlador;
import java.util.*;

import javax.swing.*;
/**
 *
 * @author ET36
 */
public class UsuarioDAO {
    Conexion con;
    Connection myconexion;
    boolean resultadoRegistro;
    boolean resultadoInicio;
    public boolean inicioSesion;
    private Controlador controlador;
    private Modelo modelo;
    private boolean estado;
   

    public UsuarioDAO(Modelo _modelo) {
        modelo = _modelo;
        con = new Conexion();
        myconexion = con.getConnection();
        
    }
    
    public void registrarse(UsuarioVO usuario){
        String sqlComprobar = "SELECT verificarUsuario(?)";
        String sqlRegistrar = "CALL registrarUsuario(?, ?, ?)";

        try {
            
            PreparedStatement miPreparedStatement2 = myconexion.prepareStatement(sqlComprobar);
            miPreparedStatement2.setString(1, usuario.getNombre());
            ResultSet rs = miPreparedStatement2.executeQuery();

            boolean resultadoRegistro = false;
            if (rs.next()) {
                resultadoRegistro = rs.getBoolean(1);
            }

            
            if (!resultadoRegistro) {
                try{
                    PreparedStatement miPreparedStatement = myconexion.prepareStatement(sqlRegistrar);
                    miPreparedStatement.setString(1, usuario.getNombre());
                    miPreparedStatement.setString(2, usuario.getContrasenia());
                    miPreparedStatement.setString(3, usuario.getTipo());
                    miPreparedStatement.executeUpdate();
                    iniciarSesion(usuario.getNombre(), usuario.getContrasenia());
                    JOptionPane.showMessageDialog(null, "Se registró correctamente");
                }catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "No se registró correctamente");
                }
            } else {
                JOptionPane.showMessageDialog(null, "El usuario ya existe");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "No se registró correctamente");
        }
    }

   public void iniciarSesion(String _usuario, String _contrasenia) {
        String sqlComprobar = "SELECT verificarInicio(?, ?)";
        String sqlObtenerUsuario = "CALL obtenerUsuario(?)";
        boolean resultadoRegistro2 = false;
        int id = 0;
        String nombreUsuario = "";
        String contrasenia = "";
        String tipoUsuario = "";
        try {
            PreparedStatement miPreparedStatement = myconexion.prepareStatement(sqlComprobar);
            miPreparedStatement.setString(1, _usuario);
            miPreparedStatement.setString(2, _contrasenia);
            ResultSet rs = miPreparedStatement.executeQuery();
            if (rs.next()) {
                resultadoRegistro2 = rs.getBoolean(1);
            }
            
            if (resultadoRegistro2) {
                PreparedStatement miPreparedStatement2 = myconexion.prepareStatement(sqlObtenerUsuario);
                miPreparedStatement2.setString(1, _usuario);

                ResultSet rs2 = miPreparedStatement2.executeQuery();      
                while (rs2.next()) {
                    id = rs2.getInt("idUsuario");
                    nombreUsuario = rs2.getString("nombreUsuario");
                    contrasenia = rs2.getString("contrasenia");
                    tipoUsuario = rs2.getString("tipoUsuario");
                }
                
                UsuarioVO usuario = new UsuarioVO(id,nombreUsuario, contrasenia, tipoUsuario);
                Controlador.usuarioIniciado = usuario;
            } else {
                JOptionPane.showMessageDialog(null, "Usuario y/o contraseña incorrectos");
            }  
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "No se registró correctamente: " + e.getMessage());
        }
    }
   public void unirseASala(String _sala, String _contrasenia){
        String sqlComprobar = "SELECT verificarSala(?, ?)";
        String sqlObtenerSala = "CALL obtenerSala(?)";
        boolean resultadoRegistro2 = false;
        int idSala = 0;
        String nombreSala = "";
        String contraseniaSala = "";
        
        try {
            PreparedStatement miPreparedStatement = myconexion.prepareStatement(sqlComprobar);
            miPreparedStatement.setString(1, _sala);
            miPreparedStatement.setString(2, _contrasenia);
            ResultSet rs = miPreparedStatement.executeQuery();
            if (rs.next()) {
                resultadoRegistro2 = rs.getBoolean(1);
            }

            if (resultadoRegistro2) {
                JOptionPane.showMessageDialog(null, "Logró unirse a la sala");
                PreparedStatement miPreparedStatement2 = myconexion.prepareStatement(sqlObtenerSala);
                miPreparedStatement2.setString(1, _sala);

                ResultSet rs2 = miPreparedStatement2.executeQuery();      
                while (rs2.next()) {
                    idSala = rs2.getInt("idSala");
                    nombreSala = rs2.getString("nombreSala");
                    contraseniaSala = rs2.getString("contraseniaSala");
                }
                SalaVO sala = new SalaVO(idSala, nombreSala, contraseniaSala);
                Controlador.salaActual = sala;
            } else {
                JOptionPane.showMessageDialog(null, "Sala y/o contraseña incorrectos");
                
            }  
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "No se unió correctamente: " + e.getMessage());
        }
      
   }
   
    public void obtenerPreguntas(int idSala){
        llevarPreguntas(idSala);
    }       
   
   public void llevarPreguntas(int idSala){
        String sqlObtenerPreguntas = "CALL obtenerPreguntas(?)";
        ArrayList<PreguntaVO> preguntas = new ArrayList<>();
        try{
            PreparedStatement miPreparedStatement = myconexion.prepareStatement(sqlObtenerPreguntas);
            miPreparedStatement.setInt(1, idSala);
            ResultSet rs = miPreparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idPreguntasFormulario");
                String pregunta = rs.getString("pregunta");
                String opcionCorrecta = rs.getString("opcionCorrecta");
                String opcionIncorrecta1 = rs.getString("opcionIncorrecta1");
                String opcionIncorrecta2 = rs.getString("opcionIncorrecta2");
                String opcionIncorrecta3 = rs.getString("opcionIncorrecta3");
                int idFormulario = rs.getInt("idFormulario");
                PreguntaVO preguntaVO = new PreguntaVO(id,pregunta,opcionCorrecta,opcionIncorrecta1,opcionIncorrecta2,opcionIncorrecta3,idFormulario);
                preguntas.add(preguntaVO);
            }
            System.out.println(preguntas.get(0).getPregunta());
            modelo.llevarPreguntas(preguntas);
            
        } catch (Exception e) {
        	
            JOptionPane.showMessageDialog(null, "No se cargaron las preguntas: " + e.getMessage());
        }
       
   }
   
   public void llevarEstadisticas(){
       
       String sqlObtenerEstadisticas = "CALL obtenerEstadisticas(?)";
       try{
            PreparedStatement miPreparedStatement = myconexion.prepareStatement(sqlObtenerEstadisticas);
            miPreparedStatement.setInt(1, Controlador.usuarioIniciado.getId());
            ResultSet rs = miPreparedStatement.executeQuery();
            String estadisticas = "";
            while (rs.next()){
                String nombreSala = rs.getString("nombreSala");
                String promedio = rs.getString("promedio");
                String estadistica = "Sala: " + nombreSala + ", Promedio:"+promedio;
                estadisticas += estadistica + "\n";
                
                
            }
            System.out.println("u");
            modelo.llevarEstadisticas(estadisticas);
       }catch(Exception e){
           e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Error"+e);
       }
       
   }
   public void ingresarAlumnosala(double promedio){
       String sqlIngresarAlumnosala = "CALL ingresarAlumnosala(?,?,?)";
       try{
            PreparedStatement miPreparedStatement = myconexion.prepareStatement(sqlIngresarAlumnosala);
            miPreparedStatement.setInt(1, Controlador.usuarioIniciado.getId());
            miPreparedStatement.setInt(2,Controlador.salaActual.getIdSala());
            miPreparedStatement.setDouble(3, promedio);
            miPreparedStatement.executeUpdate();
            
       }catch(Exception e){
           e.printStackTrace();
           JOptionPane.showMessageDialog(null, "No se pudo guardar el promedio en la sala");
       }
   }
   
   public void buscarEstadisticas(){
       llevarEstadisticas();
   }

}
