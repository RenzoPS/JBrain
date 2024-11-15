package Modelo;
import Controlador.*;
import java.util.*;

public class Modelo {
    Controlador controlador;
    UsuarioDAO usuarioDAO;
	public Modelo() {
            usuarioDAO = new UsuarioDAO(this);  
        }
	
	
	public void setControlador(Controlador controlador) {
		this.controlador = controlador;
	}
	public Controlador getControlador() {
		return controlador;
	}
        public void registrarse(UsuarioVO usuarioVO){
            usuarioDAO.registrarse(usuarioVO);
        }
        public void iniciarSesion(String usuario, String contrasenia){
            usuarioDAO.iniciarSesion(usuario,contrasenia);
        }
        public void unirseASala(String sala, String contrasenia){
            usuarioDAO.unirseASala(sala,contrasenia);
        }
        public void llevarPreguntas(ArrayList<PreguntaVO> preguntas){
        	controlador.llevarPreguntas(preguntas);
        }
         public void obtenerPreguntas(int idSala){
            usuarioDAO.obtenerPreguntas(idSala);
        }       
        public void ingresarAlumnosala(double promedio){
            usuarioDAO.ingresarAlumnosala(promedio);
        }
        
        public void llevarEstadisticas(String estadisticas){
            
            controlador.llevarEstadisticas(estadisticas);
        }
        public void buscarEstadisticas(){
            
            usuarioDAO.buscarEstadisticas();
        }
}

