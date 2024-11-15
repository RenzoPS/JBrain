USE jbrain;
-- ////////////// INSERTS /////////////
DROP PROCEDURE IF EXISTS registrarUsuario;
DELIMITER $$
	CREATE PROCEDURE registrarUsuario(IN _nombreUsuario VARCHAR(45), IN _contrasenia VARCHAR(255), IN _tipoUsuario VARCHAR(20))
	BEGIN
		INSERT INTO usuarios(nombreUsuario, contrasenia, tipoUsuario) VALUES(_nombreUsuario, _contrasenia, _tipoUsuario);
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS ingresarSalas;
DELIMITER $$
	CREATE PROCEDURE ingresarSalas(IN _idUsuario INT, IN _nombreSala VARCHAR(45), IN _idFormulario INT, IN _contraseniaSala INT)
	BEGIN
		INSERT INTO salas(idUsuario, nombreSala, idFormulario, contraseniaSala) VALUES(_idUsuario, _nombreSala, _idFormulario, _contraseniaSala);
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS ingresarAlumnoSala;
DELIMITER $$
	CREATE PROCEDURE ingresarAlumnoSala(IN _idSala INT, IN _idUsuario INT, IN _puntuacion FLOAT(8,2), IN _respuestasCorrectas INT)
	BEGIN
		INSERT INTO alumnoSala(idSala, idUsuario, puntuacion, respuestasCorrectas) VALUES(_idSala, _idUsuario, _puntuacion, _respuestasCorrectas);
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS ingresarFormularios;
DELIMITER $$
	CREATE PROCEDURE ingresarFormularios(IN _idUsuario INT, IN _nombreFormulario VARCHAR(50))
	BEGIN
		INSERT INTO formularios(idUsuario, nombreFormulario) VALUES(_idUsuario, _nombreFormulario);
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS ingresarPreguntasFormulario;
DELIMITER $$
	CREATE PROCEDURE ingresarPreguntasFormulario(IN _pregunta VARCHAR(200), IN _opcionCorrecta VARCHAR(200), IN _opcionIncorrecta1 VARCHAR(200), IN _opcionIncorrecta2 VARCHAR(200), IN _opcionIncorrecta3 VARCHAR(200), IN _idFormulario INT)
	BEGIN
		INSERT INTO preguntasFormulario(pregunta, opcionCorrecta, opcionIncorrecta1, opcionIncorrecta2, opcionIncorrecta3, idFormulario) VALUES(_pregunta, _opcionCorrecta, _opcionIncorrecta1, _opcionIncorrecta2, _opcionIncorrecta3, _idFormulario);
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS ingresarAlumnosala;
DELIMITER $$
	CREATE PROCEDURE ingresarAlumnosala(IN _idUsuaurio INT, IN _idSala INT, IN _promedio FLOAT(3,1))
	BEGIN
		INSERT INTO alumnosala (idUsuario, idSala, promedio) VALUES (_idUsuaurio,_idSala,_promedio);
	END; $$
DELIMITER ;

-- ///////////// SELECTS /////////////
DROP PROCEDURE IF EXISTS obtenerUsuario;
DELIMITER $$
	CREATE PROCEDURE obtenerUsuario(IN _nombreUsuario VARCHAR(45))
	BEGIN
		SELECT * FROM usuarios WHERE nombreUsuario = _nombreUsuario;
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS obtenerSala;
DELIMITER $$
	CREATE PROCEDURE obtenerSala(IN _nombreSala VARCHAR(45))
	BEGIN
		SELECT * FROM salas WHERE nombreSala = _nombreSala;
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS obtenerAlumnosSala;
DELIMITER $$
	CREATE PROCEDURE obtenerAlumnosSala(IN _idSala INT)
	BEGIN
		SELECT * FROM alumnoSala WHERE idSala = _idSala;
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS obtenerFormularios;
DELIMITER $$
	CREATE PROCEDURE obtenerFormularios(IN _idFormulario INT)
	BEGIN
		SELECT * FROM formularios WHERE idFormulario = _idFormulario;
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS obtenerPreguntasFormulario;
DELIMITER $$
	CREATE PROCEDURE obtenerPreguntasFormulario(IN _idFormulario INT)
	BEGIN
		SELECT * FROM preguntasFormulario WHERE idFormulario = _idFormulario;
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS obtenerPreguntas;
DELIMITER $$
	CREATE PROCEDURE obtenerPreguntas(IN _idSala INT)
	BEGIN
		DECLARE _idFormulario INT;
        SELECT idFormulario INTO _idFormulario FROM salas WHERE idSala = _idSala;
		SELECT * FROM preguntasFormulario WHERE idFormulario = _idFormulario;
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS cargarSalas;
DELIMITER $$
	CREATE PROCEDURE cargarSalas()
	BEGIN
		SELECT * FROM salas;
	END; $$
DELIMITER ;

DROP PROCEDURE IF EXISTS obtenerEstadisticas;
DELIMITER $$
	CREATE PROCEDURE obtenerEstadisticas(IN _idUsuario INT)
	BEGIN
		SELECT s.nombreSala,a.promedio FROM alumnosala a join salas s on a.idSala = s.idSala WHERE a.idUsuario = _idUsuario;
	END; $$
DELIMITER ;


-- ///////////// UPDATES /////////////
DROP PROCEDURE IF EXISTS actualizarPuntaje;
DELIMITER $$
	CREATE PROCEDURE actualizarPuntaje(IN _idUsuario INT,IN _preguntasCorrectas INT,IN _idSala INT)
	BEGIN
        UPDATE alumnoSala SET puntuacion = obtenerPuntaje(_preguntasCorrectas, _idSala), respuestasCorrectas = _preguntasCorrectas WHERE idUsuario = _idUsuario AND idSala = _idSala;
	END; $$
DELIMITER ;


-- ///////////// RETURNS /////////////
DROP FUNCTION IF EXISTS obtenerPuntaje;
DELIMITER $$
	CREATE FUNCTION obtenerPuntaje(_preguntasCorrectas INT,_idSala INT)
		RETURNS FLOAT(8,2)
        DETERMINISTIC
		BEGIN
			DECLARE formulario INT;
			DECLARE cantidadPreguntas INT;
			DECLARE puntaje FLOAT(8,2);
			SELECT idFormulario INTO formulario FROM salas WHERE idSala = _idSala;
			SELECT COUNT(pregunta) INTO cantidadPreguntas FROM preguntasFormulario WHERE idFormulario = formulario;
			SET puntaje = (_preguntasCorrectas * 10) / cantidadPreguntas;
			RETURN puntaje;
		END; $$
DELIMITER ;

DROP FUNCTION IF EXISTS verificarUsuario;
DELIMITER $$
	CREATE FUNCTION verificarUsuario(_nombreUsuario VARCHAR(45))
		RETURNS BOOLEAN
        DETERMINISTIC
		BEGIN
			DECLARE filas INT(1);
            SELECT COUNT(*) INTO filas FROM usuarios WHERE nombreUsuario = _nombreUsuario;
            IF filas = 0 THEN RETURN FALSE;
            ELSE RETURN TRUE;
            END IF;
		END; $$
DELIMITER ;


DROP FUNCTION IF EXISTS verificarInicio;
DELIMITER $$
	CREATE FUNCTION verificarInicio(_nombreUsuario VARCHAR(45), _contrasenia VARCHAR(255))
		RETURNS BOOLEAN
        DETERMINISTIC
		BEGIN
			DECLARE filas INT(1);
            SELECT COUNT(*) INTO filas FROM usuarios WHERE nombreUsuario = _nombreUsuario AND contrasenia =_contrasenia;
            IF filas = 0 THEN RETURN FALSE;
            ELSE RETURN TRUE;
            END IF;
		END; $$
DELIMITER ;


DROP FUNCTION IF EXISTS verificarSala;
DELIMITER $$
	CREATE FUNCTION verificarSala(_nombreSala VARCHAR(45), _contraseniaSala VARCHAR(255))
		RETURNS BOOLEAN
        DETERMINISTIC
		BEGIN
			DECLARE filas INT(1);
            SELECT COUNT(*) INTO filas FROM salas WHERE nombreSala = _nombreSala AND contraseniaSala =_contraseniaSala;
            IF filas = 0 THEN RETURN FALSE;
            ELSE RETURN TRUE;
            END IF;
		END; $$
DELIMITER ;



