DROP DATABASE IF EXISTS examenes;
CREATE DATABASE examenes CHARSET utf8mb4;
USE examenes;

CREATE TABLE persona (
	ci VARCHAR(8) PRIMARY KEY,
	nombre VARCHAR(20) NOT NULL,
	primerApellido VARCHAR(20) NOT NULL,
	segundoApellido VARCHAR(20)
);


CREATE TABLE alumnos (
	idAlumno INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	ci VARCHAR(8)  NOT NULL, FOREIGN KEY(ci) REFERENCES persona(ci),
	grupo VARCHAR(1) NOT NULL
);
CREATE TABLE profesores (
	idProfesor INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	ci VARCHAR(8)  NOT NULL, FOREIGN KEY (ci) REFERENCES persona(ci)
);
CREATE TABLE  practicas (
	idPracticas INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	tituloPracticas VARCHAR(20) NOT NULL,
	dificultad VARCHAR(5) NOT NULL
);
CREATE TABLE examenesTeoricos (
	idExamenTeorico INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	idProfesor INT UNSIGNED NOT NULL , FOREIGN KEY (idProfesor) REFERENCES profesores(idProfesor),
	tituloExamenTeorico VARCHAR(20) NOT NULL,
	Npreguntas INT UNSIGNED NOT NULL,
	fechaTeorico DATE NOT NULL
);
CREATE TABLE realizanPracticas (
	idAlumno INT UNSIGNED NOT NULL , FOREIGN KEY (idAlumno) REFERENCES alumnos(idAlumno),
	idPracticas INT UNSIGNED NOT NULL, FOREIGN KEY (idPracticas) REFERENCES practicas(idPracticas),
	fechaPractica DATE NOT NULL,
	notaPractica INT UNSIGNED NOT NULL
);

CREATE TABLE realizanTeoricos (
	idAlumno INT UNSIGNED NOT NULL,FOREIGN KEY (idAlumno) REFERENCES alumnos(idAlumno),
	idExamenTeorico INT UNSIGNED NOT NULL,FOREIGN KEY (idExamenTeorico) REFERENCES examenesTeoricos(idExamenTeorico),
	notaTeorico INT UNSIGNED NOT NULL
);
CREATE TABLE participan (
	idProfesor INT UNSIGNED NOT NULL,FOREIGN KEY (idProfesor) REFERENCES profesores(idProfesor),
	idPracticas INT UNSIGNED NOT NULL,FOREIGN KEY (idPracticas) REFERENCES practicas(idPracticas),
	fechaParticipacion DATE NOT NULL
);
CREATE TABLE diseñan (
	idProfesor INT UNSIGNED NOT NULL,FOREIGN KEY (idProfesor) REFERENCES profesores(idProfesor),
	idExamenTeorico INT UNSIGNED NOT NULL,FOREIGN KEY (idExamenTeorico) REFERENCES examenesTeoricos(idExamenTeorico)
);
