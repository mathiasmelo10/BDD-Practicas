DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital CHARSET utf8mb4;
USE hospital;

CREATE TABLE Pacientes(
	historial INT PRIMARY KEY,
	ci VARCHAR(8) NOT NULL,
    nombre VARCHAR (50) NOT NULL,
    domicilio VARCHAR (50) NOT NULL,
    telefono INT (9) NOT NULL
);

CREATE TABLE Ingresos(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    historial INT NOT NULL,
    codmedico INT NOT NULL,
    fecha DATE NOT NULL CHECK (fecha > 15/03/2018),
    hora TIME NOT NULL,
    diagnostico VARCHAR (30) NOT NULL,
    FOREIGN KEY (historial) REFERENCES Pacientes(historial)
);

CREATE TABLE Medicos(
codmedico INT PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
especialidad VARCHAR (100) NOT NULL
);

