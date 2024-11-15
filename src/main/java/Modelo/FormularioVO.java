package Modelo;

import java.util.ArrayList;

public class FormularioVO {
	private int idFormulario;
        private String nombreFormulario;
	private ArrayList<PreguntaVO> preguntas;
	private int idUsuario;
	
	
	public FormularioVO(int idFormulario, String nombreFormulario, ArrayList<PreguntaVO> preguntas, int idUsuario) {
		this.idFormulario = idFormulario;
                this.nombreFormulario = nombreFormulario;
		this.preguntas = preguntas;
		this.idUsuario = idUsuario;
	}
	
	public int getIdFormulario() {
		return idFormulario;
	}
	public void setIdFormulario(int idFormulario) {
		this.idFormulario = idFormulario;
	}
        
	public String getNombreFormulario() {
		return nombreFormulario;
	}
	public void setNombreFormulario(String nombreFormulario) {
		this.nombreFormulario = nombreFormulario;
	} 
        
	public ArrayList<PreguntaVO> getPreguntas() {
		return preguntas;
	}
	public void setPreguntas(ArrayList<PreguntaVO> preguntas) {
		this.preguntas = preguntas;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	@Override
	public String toString() {
		return "FormularioVO [idFormulario=" + idFormulario + ", preguntas=" + preguntas + ", idUsuario=" + idUsuario
				+ "]";
	}
	
	
}
