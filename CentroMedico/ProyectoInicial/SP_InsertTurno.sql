--SELECT * FROM Turno
--SELECT * FROM TurnoPaciente
--SELECT * FROM Paciente
--SELECT * FROM Medico

--EXEC ALTA_turno '20190215 8:17','N/A',2,1

ALTER PROCEDURE ALTA_Turno(
	@fechaTurno VARCHAR(14), --20190215 12:00
	@observacion VARCHAR(1000) = '',
	@idPaciente INT,
	@idMedico INT
) AS

/*
	Estado = 1 (Pendiente)
	Estado = 2 (Realizado)
	Estado = 3 (Cancelado)
*/
SET NOCOUNT ON --Para que no cuente los registros que fueron afectados

BEGIN
	IF NOT EXISTS(SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno = @fechaTurno)
	BEGIN
		--Guardar turno
		INSERT INTO Turno (fechaTurno, estado, observacion) 
		VALUES (@fechaTurno, 1, @observacion);
		PRINT 'El turno se agrego correctamente'

		--Recuperar id del ultimo turno insertado
		DECLARE @idTurno INT
		SET @idTurno = @@IDENTITY

		--Guardar TurnoPacienteMedico
		INSERT INTO TurnoPaciente (idTurno,idPaciente,idMedico)
		VALUES (@idTurno,@idPaciente,@idMedico)
		PRINT 'El turnoPacienteMedico se agrego correctamente'

		RETURN
	END
	ELSE
	BEGIN
		PRINT 'El turno ya existe'
		RETURN
	END
END
GO