-- Añadimos más usuarios si es necesario
CALL registrarUsuario('MarioFernandez', '111', 'Profesor');
CALL registrarUsuario('LuciaMartinez', '222', 'Profesor');
CALL registrarUsuario('PedroGonzalez', '333', 'Profesor');
CALL registrarUsuario('ClaraPerez', '444', 'Profesor');
CALL registrarUsuario('JoseRamirez', '555', 'Profesor');
CALL registrarUsuario('LauraMartinez', '666', 'Profesor');
CALL registrarUsuario('PabloLopez', '777', 'Profesor');
CALL registrarUsuario('SofiaGomez', '888', 'Profesor');
CALL registrarUsuario('CarlosDiaz', '999', 'Profesor');


-- Matematica 
CALL ingresarPreguntasFormulario('¿Cuál es la raíz cuadrada de 16?', '4', '2', '8', '6', 1);
CALL ingresarPreguntasFormulario('¿Cuánto es 2+2?', '4', '3', '5', '6', 1);
CALL ingresarPreguntasFormulario('¿Qué es el valor de pi?', '3.1416', '3', '4', '2.718', 1);
CALL ingresarPreguntasFormulario('¿Cuál es el resultado de 5*5?', '25', '20', '15', '10', 1);
CALL ingresarPreguntasFormulario('¿Cuánto es 12/4?', '3', '4', '2', '5', 1);

-- Historia
CALL ingresarPreguntasFormulario('¿En qué año fue la Revolución Francesa?', '1789', '1776', '1804', '1821', 2);
CALL ingresarPreguntasFormulario('¿Quién fue el primer presidente de los Estados Unidos?', 'George Washington', 'Thomas Jefferson', 'Abraham Lincoln', 'John Adams', 2);
CALL ingresarPreguntasFormulario('¿Dónde se firmó la Declaración de Independencia?', 'Filadelfia', 'Nueva York', 'Washington D.C.', 'Boston', 2);
CALL ingresarPreguntasFormulario('¿Qué país fue el primero en enviar un satélite al espacio?', 'Unión Soviética', 'Estados Unidos', 'China', 'Francia', 2);
CALL ingresarPreguntasFormulario('¿Quién fue el líder de la Alemania Nazi durante la Segunda Guerra Mundial?', 'Adolf Hitler', 'Joseph Stalin', 'Winston Churchill', 'Franklin D. Roosevelt', 2);

-- Ciencia
CALL ingresarPreguntasFormulario('¿Cuál es la fórmula química del agua?', 'H2O', 'CO2', 'NaCl', 'O2', 3);
CALL ingresarPreguntasFormulario('¿Qué planeta es conocido como el planeta rojo?', 'Marte', 'Júpiter', 'Venus', 'Saturno', 3);
CALL ingresarPreguntasFormulario('¿Cuál es el elemento más abundante en el universo?', 'Hidrógeno', 'Oxígeno', 'Carbono', 'Nitrógeno', 3);
CALL ingresarPreguntasFormulario('¿Qué gas respiramos para vivir?', 'Oxígeno', 'Dióxido de carbono', 'Helio', 'Argón', 3);
CALL ingresarPreguntasFormulario('¿Qué fuerza nos mantiene en la tierra?', 'Gravedad', 'Magnetismo', 'Inercia', 'Fricción', 3);

-- Geografia 
CALL ingresarPreguntasFormulario('¿Cuál es el río más largo del mundo?', 'Amazonas', 'Nilo', 'Yangtsé', 'Misisipi', 4);
CALL ingresarPreguntasFormulario('¿Cuál es el país más grande del mundo por superficie?', 'Rusia', 'China', 'Canadá', 'Estados Unidos', 4);
CALL ingresarPreguntasFormulario('¿Cuál es la capital de Francia?', 'París', 'Londres', 'Roma', 'Berlín', 4);
CALL ingresarPreguntasFormulario('¿En qué continente está Egipto?', 'África', 'Asia', 'Europa', 'América', 4);
CALL ingresarPreguntasFormulario('¿Qué océano es el más grande?', 'Pacífico', 'Atlántico', 'Índico', 'Ártico', 4);

-- Literatura
CALL ingresarPreguntasFormulario('¿Quién escribió "Cien años de soledad"?', 'Gabriel García Márquez', 'Mario Vargas Llosa', 'Julio Cortázar', 'Jorge Luis Borges', 5);
CALL ingresarPreguntasFormulario('¿Cuál es el nombre del protagonista de "El Quijote"?', 'Don Quijote', 'Sancho Panza', 'Alonso Quijano', 'Dulcinea', 5);
CALL ingresarPreguntasFormulario('¿Qué género literario cultivó Edgar Allan Poe?', 'Terror', 'Romántico', 'Ciencia Ficción', 'Drama', 5);
CALL ingresarPreguntasFormulario('¿En qué siglo nació William Shakespeare?', 'XVI', 'XVII', 'XV', 'XIV', 5);
CALL ingresarPreguntasFormulario('¿Cuál es la primera obra de J.K. Rowling?', 'Harry Potter y la piedra filosofal', 'Harry Potter y la cámara secreta', 'Animales fantásticos', 'Harry Potter y el prisionero de Azkaban', 5);

-- Arte
CALL ingresarPreguntasFormulario('¿Quién pintó "La Mona Lisa"?', 'Leonardo da Vinci', 'Pablo Picasso', 'Vincent van Gogh', 'Claude Monet', 6);
CALL ingresarPreguntasFormulario('¿En qué ciudad se encuentra el Museo del Louvre?', 'París', 'Londres', 'Madrid', 'Roma', 6);
CALL ingresarPreguntasFormulario('¿Qué artista es conocido por sus pinturas de girasoles?', 'Vincent van Gogh', 'Salvador Dalí', 'Andy Warhol', 'Frida Kahlo', 6);
CALL ingresarPreguntasFormulario('¿Qué estilo artístico es Salvador Dalí?', 'Surrealismo', 'Impresionismo', 'Cubismo', 'Expresionismo', 6);
CALL ingresarPreguntasFormulario('¿Quién esculpió "El David"?', 'Miguel Ángel', 'Donatello', 'Bernini', 'Rodin', 6);

-- Musica
CALL ingresarPreguntasFormulario('¿Quién compuso la Novena Sinfonía?', 'Ludwig van Beethoven', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Franz Schubert', 7);
CALL ingresarPreguntasFormulario('¿Qué instrumento se toca con un arco?', 'Violín', 'Guitarra', 'Piano', 'Flauta', 7);
CALL ingresarPreguntasFormulario('¿En qué género musical es conocida Aretha Franklin?', 'Soul', 'Rock', 'Jazz', 'Pop', 7);
CALL ingresarPreguntasFormulario('¿Quién es conocido como "El Rey del Rock and Roll"?', 'Elvis Presley', 'Chuck Berry', 'Little Richard', 'Buddy Holly', 7);
CALL ingresarPreguntasFormulario('¿Qué banda lanzó el álbum "Abbey Road"?', 'The Beatles', 'The Rolling Stones', 'Led Zeppelin', 'Pink Floyd', 7);

-- Deporte
CALL ingresarPreguntasFormulario('¿En qué deporte se utiliza una pelota ovalada?', 'Fútbol americano', 'Fútbol', 'Baloncesto', 'Béisbol', 8);
CALL ingresarPreguntasFormulario('¿Cuál es el país de origen del fútbol?', 'Inglaterra', 'Brasil', 'Alemania', 'España', 8);
CALL ingresarPreguntasFormulario('¿Quién ganó la Copa Mundial de la FIFA 2018?', 'Francia', 'Croacia', 'Brasil', 'Alemania', 8);
CALL ingresarPreguntasFormulario('¿Cuántos jugadores hay en un equipo de baloncesto?', '5', '6', '7', '8', 8);
CALL ingresarPreguntasFormulario('¿Qué deporte se practica en Wimbledon?', 'Tenis', 'Golf', 'Críquet', 'Hockey', 8);

-- Tecnlogia 
CALL ingresarPreguntasFormulario('¿Quién es el fundador de Microsoft?', 'Bill Gates', 'Steve Jobs', 'Larry Page', 'Elon Musk', 9);
CALL ingresarPreguntasFormulario('¿Qué significa HTML?', 'HyperText Markup Language', 'HyperTool Multi Language', 'HighText Machine Language', 'HyperTag Markup Language', 9);
CALL ingresarPreguntasFormulario('¿En qué año se lanzó el primer iPhone?', '2007', '2005', '2008', '2006', 9);
CALL ingresarPreguntasFormulario('¿Qué es un GPU?', 'Unidad de procesamiento gráfico', 'Unidad de procesamiento general', 'Unidad de procesamiento geográfico', 'Unidad de procesamiento gigante', 9);
CALL ingresarPreguntasFormulario('¿Qué empresa desarrolló el sistema operativo Android?', 'Google', 'Apple', 'Microsoft', 'IBM', 9);

-- Filosofia
CALL ingresarPreguntasFormulario('¿Quién es conocido como el "Padre de la Filosofía Occidental"?', 'Sócrates', 'Platón', 'Aristóteles', 'Descartes', 10);
CALL ingresarPreguntasFormulario('¿Qué filósofo escribió "La República"?', 'Platón', 'Aristóteles', 'Sócrates', 'Nietzsche', 10);
CALL ingresarPreguntasFormulario('¿Cuál es la obra más famosa de Nietzsche?', 'Así habló Zaratustra', 'La República', 'Meditaciones Metafísicas', 'La crítica de la razón pura', 10);
CALL ingresarPreguntasFormulario('¿Qué corriente filosófica defiende la búsqueda de la felicidad a través del placer moderado?', 'Epicureísmo', 'Estoicismo', 'Existencialismo', 'Nihilismo', 10);
CALL ingresarPreguntasFormulario('¿Quién es el autor de "Meditaciones Metafísicas"?', 'René Descartes', 'Immanuel Kant', 'David Hume', 'John Locke', 10);

-- Añadimos formularios para las diferentes temáticas
CALL ingresarFormularios(1, 1); -- Matemática
CALL ingresarFormularios(2, 2); -- Historia
CALL ingresarFormularios(3, 3); -- Ciencia
CALL ingresarFormularios(4, 4); -- Geografía
CALL ingresarFormularios(5, 5); -- Literatura
CALL ingresarFormularios(6, 6); -- Arte
CALL ingresarFormularios(7, 7); -- Música
CALL ingresarFormularios(8, 8); -- Deporte
CALL ingresarFormularios(9, 9); -- Tecnología
CALL ingresarFormularios(10, 1); -- Filosofía

-- Salas correspondientes a los formularios
CALL ingresarSalas(1, 'Matematica', 1,'123');
CALL ingresarSalas(2, 'Historia', 2,'123');
CALL ingresarSalas(3, 'Ciencia', 3,'123');
CALL ingresarSalas(4, 'Geografia', 4,'123');
CALL ingresarSalas(5, 'Literatura', 5,'123');
CALL ingresarSalas(6, 'Arte', 6,'123');
CALL ingresarSalas(7, 'Musica', 7,'123');
CALL ingresarSalas(8, 'Deporte', 8,'123');
CALL ingresarSalas(9, 'Tecnologia', 9,'123');
CALL ingresarSalas(10, 'Filosofia', 10,'123');




