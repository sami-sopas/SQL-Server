--SELECT * FROM Medico
--SELECT * FROM Especialidad
--SELECT * FROM MedicoEspecialidad
 
--EXEC ALTA_Medico 'Juan','Juanelo',1,'N/A'

ALTER PROCEDURE ALTA_Medico(
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@idEspecialidad INT,
	@descripcion VARCHAR(50)
) AS

SET NOCOUNT ON --Para que no cuente los registros que fueron afectados

BEGIN
	IF NOT EXISTS(SELECT TOP 1 idMedico FROM Medico WHERE nombre = @nombre AND apellido = @apellido)
	BEGIN
		--Guardar Medico
		INSERT INTO Medico (nombre, apellido) 
		VALUES (@nombre, @apellido);
		PRINT 'El Medico se agrego correctamente'

		--Recuperar id del ultimo medico insertado
		DECLARE @idMedico INT
		SET @idMedico = SCOPE_IDENTITY();

		--Guardar MedicoEspecialidad
		INSERT INTO MedicoEspecialidad(idMedico,idEspecialidad,descripcion)
		VALUES (@idMedico,@idEspecialidad,@descripcion)
		PRINT 'El medicoEspecialidad se agrego correctamente'

		RETURN
	END
	ELSE
	BEGIN
		PRINT 'El medico ya existe'
		RETURN
	END
END
GO