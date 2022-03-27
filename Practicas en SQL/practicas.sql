DROP DATABASE IF EXISTS practicas;
CREATE DATABASE practicas CHARSET utf8mb4;
USE practicas;
CREATE TABLE profesor (
id INT (5) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
ci VARCHAR (8) UNIQUE KEY NOT NULL,
nombre VARCHAR (20) NOT NULL,
apellido1 VARCHAR (20) NOT NULL,
apellido2 VARCHAR (20)
);
CREATE TABLE practica (
id INT (5) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR (30) ,
dificultad ENUM('baja','media','alta') 
);
CREATE TABLE diseña (
idProfesor INT UNSIGNED NOT NULL , FOREIGN KEY (idProfesor) REFERENCES Profesor(id),
idPractica INT UNSIGNED NOT NULL , FOREIGN KEY (idPractica) REFERENCES Practica(id),
fecha DATE NOT NULL
);
  CREATE TABLE alumno (
id INT (5) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
ci VARCHAR (8),
grupo CHAR(1),
nombre VARCHAR (20),
apellido1 VARCHAR (20),
apellido2 VARCHAR (20)
);
 


CREATE TABLE realiza (
idAlumno INT UNSIGNED NOT NULL , FOREIGN KEY (idAlumno) REFERENCES Alumno(id),
idPractica INT UNSIGNED NOT NULL , FOREIGN KEY (idPractica) REFERENCES Practica(id),
fecha DATE NOT NULL,
nota INT (2) NOT NULL CHECK (nota>=’1’ AND nota<=’12’)
);

ALTER TABLE profesor
ADD telefono INT (9),
ADD email VARCHAR (30) AFTER apellido2;
