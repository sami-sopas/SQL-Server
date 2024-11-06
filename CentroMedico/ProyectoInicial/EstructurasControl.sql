--SELECT * FROM Paciente

--IF/ELSE/Exists

DECLARE @idPaciente INT
SET @idPaciente = 2;

DECLARE @idTurno INT

IF @idPaciente = 2
	BEGIN
		SET @idTurno = 10
		SELECT * FROM Paciente WHERE idPaciente IN (@idPaciente)
		PRINT @idTurno

		IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = 2) --Exist (Espera una consulta de seleccion)
			PRINT 'Existe'
	END
ELSE
	BEGIN
		PRINT 'No se cumplio la condicion'
	END


--While with Return/Break

DECLARE @contador INT = 0;

WHILE (@contador <= 10)
BEGIN
	PRINT @contador

	SET @contador = @contador + 1;

	IF @contador = 3
		BREAK
END

PRINT 'Sigue ejecutandose'



--Case

DECLARE @valor INT
SET @valor = 10;

DECLARE @resultado CHAR(10) = '';

SET @resultado = (CASE WHEN @valor = 10 THEN 'Rojo'
						WHEN @valor = 20 THEN 'Verde'
							WHEN @valor = 30 THEN 'Azul'
								ELSE 'Gris'
				  END)

PRINT @resultado


SELECT *,(CASE WHEN estado = 1 THEN 'Estado Uno'
			   WHEN estado = 2 THEN 'Estado Dos'
			   WHEN estado = 3 THEN 'Estado Tres'
		  ELSE 'No definido' END) as 'Label' 
FROM Turno



--Try Catch

BEGIN TRY
	DECLARE @contador2 INT = 0
	SET @contador2 = 'Texto'
END TRY

BEGIN CATCH
	PRINT 'Error garrafal'
END CATCH