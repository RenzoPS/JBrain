package Modelo;

public class PreguntaVO {
	private int idPregunta;
	private String pregunta;
	private String opcionCorrecta;
	private String opcionIncorrecta1;
	private String opcionIncorrecta2;
	private String opcionIncorrecta3;
        private int idFormulario;

	
	public PreguntaVO(int idPregunta, String pregunta, String opcionCorrecta, String opcionIncorrecta1,
			String opcionIncorrecta2, String opcionIncorrecta3, int idFormulario) {
		this.idPregunta = idPregunta;
		this.pregunta = pregunta;
		this.opcionCorrecta = opcionCorrecta;
		this.opcionIncorrecta1 = opcionIncorrecta1;
		this.opcionIncorrecta2 = opcionIncorrecta2;
		this.opcionIncorrecta3 = opcionIncorrecta3;
                this.idFormulario = idFormulario;
	}
	
        

	public int getIdPregunta() {
		return idPregunta;
	}

	public void setIdPregunta(int idPregunta) {
		this.idPregunta = idPregunta;
	}
        

	public String getPregunta() {
		return pregunta;
	}

	public void setPregunta(String pregunta) {
		this.pregunta = pregunta;
	}

	public String getOpcionCorrecta() {
		return opcionCorrecta;
	}

	public void setOpcionCorrecta(String opcionCorrecta) {
		this.opcionCorrecta = opcionCorrecta;
	}

	public String getOpcionIncorrecta1() {
		return opcionIncorrecta1;
	}

	public void setOpcionIncorrecta1(String opcionIncorrecta1) {
		this.opcionIncorrecta1 = opcionIncorrecta1;
	}

	public String getOpcionIncorrecta2() {
		return opcionIncorrecta2;
	}

	public void setOpcionIncorrecta2(String opcionIncorrecta2) {
		this.opcionIncorrecta2 = opcionIncorrecta2;
	}

	public String getOpcionIncorrecta3() {
		return opcionIncorrecta3;
	}

	public void setOpcionIncorrecta3(String opcionIncorrecta3) {
		this.opcionIncorrecta3 = opcionIncorrecta3;
	}
        public int getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(int idFormulario) {
		this.idFormulario = idFormulario;
	}

	
	@Override
	public String toString() {
		return "PreguntaVO [idPregunta=" + idPregunta + ", pregunta=" + pregunta + ", opcionCorrecta=" + opcionCorrecta
				+ ", opcionIncorrecta1=" + opcionIncorrecta1 + ", opcionIncorrecta2=" + opcionIncorrecta2
				+ ", opcionIncorrecta3=" + opcionIncorrecta3 + "]";
	}
	
}
