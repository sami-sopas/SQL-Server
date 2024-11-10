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


--Ver informacion de tablas o SP's
sp_help Paciente

sp_helptext ALTA_Medico


--Crear FK con TransacSQL
ALTER TABLE Paciente
ADD FOREIGN KEY (idPais)
REFERENCES Pais(idPais)



--Crear funcion
CREATE FUNCTION myFunction(@var INT)
RETURNS INT --Lo que retornara la function

AS

--Cuerpo de la function
BEGIN
	SET @var = @var * 5
	RETURN @var
END

--LLamar a la funcion
SELECT dbo.myFunction (5)