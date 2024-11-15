package Modelo;

import java.util.ArrayList;

public class SalaVO {
	private int idSala;
	private String nombreSala;
        private String contrasenia;
	private UsuarioVO profesor;
	private ArrayList<UsuarioVO> alumnos;
	
	public SalaVO(int idSala, String nombreSala, UsuarioVO profesor, ArrayList<UsuarioVO> alumnos) {
		this.idSala = idSala;
		this.nombreSala = nombreSala;
		this.profesor = profesor;
		this.alumnos = alumnos;
	}
        
        public SalaVO(int idSala, String nombreSala, String contrasenia) {
            this.idSala = idSala;	
            this.nombreSala = nombreSala;
            this.contrasenia = contrasenia;
	}
	
	public int getIdSala() {
		return idSala;
	}
	public void setIdSala(int idSala) {
		this.idSala = idSala;
	}
	public String getNombreSala() {
		return nombreSala;
	}
	public void setNombreSala(String nombreSala) {
		this.nombreSala = nombreSala;
	}
	public UsuarioVO getProfesor() {
		return profesor;
	}
	public void setProfesor(UsuarioVO profesor) {
		this.profesor = profesor;
	}
	public ArrayList<UsuarioVO> getAlumnos() {
		return alumnos;
	}
	public void setAlumnos(ArrayList<UsuarioVO> alumnos) {
		this.alumnos = alumnos;
	}
	
	@Override
	public String toString() {
		return "SalaVO [idSala=" + idSala + ", nombreSala=" + nombreSala + ", profesor=" + profesor + ", alumnos="
				+ alumnos + "]";
	}

}
