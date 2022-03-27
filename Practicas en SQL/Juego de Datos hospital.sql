USE hospital;

INSERT INTO Pacientes (historial,ci,nombre,domicilio,telefono) VALUES (77777,43215678,'Luciano','La Guardia 343',099111222),(55555,54326789,'Mauro','Yuqeri 234',098222333);
INSERT INTO Ingresos (historial,codmedico,fecha,hora,diagnostico) VALUES (77777,234,'2018-05-12','19:05','Leucemia'),(55555,345,'2019-10-23','9:30','Covid19');
INSERT INTO Medicos (codmedico,nombre,especialidad) VALUES (234,'Maria','MEDICINA GENERAL'),(345,'Luciano','PEDIATRIA'),(567,'Sebastian','CARDIOLOGIA');
