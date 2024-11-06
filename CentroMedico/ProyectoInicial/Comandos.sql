PRINT 'HOLA'

SELECT TOP 1 * FROM paciente ORDER BY fnacimiento ASC;

SELECT apellido,MAX(idpaciente) FROM Paciente GROUP BY apellido;

SELECT SUM(idpaciente),apellido from Paciente GROUP BY apellido

SELECT * FROM Paciente

SELECT * FROM Paciente WHERE idPaciente NOT IN(2,4)

SELECT * FROM Paciente WHERE apellido LIKE '%rez%';

--Ejecutar stored procedure
-- EXEC (nombre SP) (Parametros)
EXEC S_paciente 2
