DROP DATABASE IF EXISTS jbrain;
CREATE DATABASE jbrain;
USE jbrain;
CREATE TABLE usuarios(
	idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    nombreUsuario VARCHAR(45),
    contrasenia VARCHAR(255),
    tipoUsuario VARCHAR(20)
);

CREATE TABLE formularios(
	idFormulario INT AUTO_INCREMENT PRIMARY KEY,
    nombreFormulario VARCHAR(50),
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario)
);

CREATE TABLE salas(
	idSala INT AUTO_INCREMENT PRIMARY KEY,
    idUsuario INT,
    nombreSala VARCHAR(45),
    contraseniaSala VARCHAR(255),
    idFormulario INT,
    FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idFormulario) REFERENCES formularios(idFormulario)
);

CREATE TABLE alumnoSala(
	idAlumnoSala INT AUTO_INCREMENT PRIMARY KEY,
    idSala INT,
    idUsuario INT,
	promedio FLOAT(3,1),
    FOREIGN KEY (idSala) REFERENCES salas(idSala),
	FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario)
);



CREATE TABLE preguntasFormulario(
	idPreguntasFormulario INT AUTO_INCREMENT PRIMARY KEY,
    pregunta VARCHAR(200),
    opcionCorrecta VARCHAR(200),
    opcionIncorrecta1 VARCHAR(200),
    opcionIncorrecta2 VARCHAR(200),
    opcionIncorrecta3 VARCHAR(200),
    idFormulario INT,
	FOREIGN KEY (idFormulario) REFERENCES formularios(idFormulario)
);


