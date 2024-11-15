package Controlador;

import Modelo.*;
import Vista.*;
import java.util.ArrayList;

import javax.swing.JPanel;

public class Controlador {
	VentanaPrincipal vista;
	Modelo modelo;
	public static UsuarioVO usuarioIniciado;
	public static SalaVO salaActual;
	private ResponderPreguntas responderPreguntas;
     private EstadisticasAlumnos estadisticasAlumnos;

	public Controlador(VentanaPrincipal vista, Modelo modelo) {
		this.modelo = modelo;
		this.vista = vista;
	}

	public Modelo getModelo() {
		return modelo;
	}

	public VentanaPrincipal getVista() {
		return vista;
	}

	public void setModelo() {
		this.modelo = modelo;
	}

	public void setVista() {
		this.vista = vista;
	}

	public void setResponderPreguntas(JPanel responderPreguntas) {
		this.responderPreguntas = (ResponderPreguntas) responderPreguntas;
	}

	public ResponderPreguntas getResponderPreguntas() {
		return responderPreguntas;
	}
        
        public void setEstadisticasAlumnos(JPanel estadisticasAlumnos) {
		this.estadisticasAlumnos = (EstadisticasAlumnos) estadisticasAlumnos;
	}

	public EstadisticasAlumnos getEstadisticasAlumnos() {
		return estadisticasAlumnos;
	}

	public void registrarse(UsuarioVO usuarioVO) {
		modelo.registrarse(usuarioVO);
	}

	public void iniciarSesion(String usuario, String contrasenia) {
		modelo.iniciarSesion(usuario, contrasenia);
	}

	public void unirseASala(String sala, String contrasenia) {
		modelo.unirseASala(sala, contrasenia);
	}

	public void llevarPreguntas(ArrayList<PreguntaVO> preguntas) {
                responderPreguntas.cargarPreguntas(preguntas);
		// responderPreguntas.cargarPreguntas(preguntas);
	}

	public void obtenerPreguntas(int idSala) {
		modelo.obtenerPreguntas(idSala);
	}
        
    public void ingresarAlumnosala(double promedio) {
		modelo.ingresarAlumnosala(promedio);
	}
        
        public void llevarEstadisticas(String estadisticas){
            
            estadisticasAlumnos.llevarEstadisitcas(estadisticas);
        }
        public void buscarEstadisticas(){
            
            modelo.buscarEstadisticas();
        }
        

}
