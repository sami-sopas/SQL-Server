--SELECT * FROM Paciente

--EXEC ALTA_Paciente '123','Juan','Juanelo','20180518','Calle 1','COL','','juan@email.com',''


ALTER PROCEDURE ALTA_Paciente(
	@dni VARCHAR(20),
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@fNacimiento VARCHAR(8),
	@domicilio VARCHAR(50),
	@idPais CHAR(3),
	@telefono VARCHAR(20) = '',
	@email VARCHAR(30),
	@observacion VARCHAR(1000) = '' -- Si el parametro llega en NULL, se tomara como valor la cadena vacia
) AS
BEGIN
	IF NOT EXISTS(SELECT * FROM Paciente WHERE dni = @dni)
	BEGIN
		INSERT INTO Paciente (dni,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion) 
		VALUES (@dni,@nombre,@apellido,@fNacimiento,@domicilio,@idPais,@telefono,@email,@observacion);

		PRINT 'El paciente se agrego correctamente'

		RETURN
	END
	ELSE
	BEGIN
		PRINT 'El paciente ya existe'
		RETURN
	END
END
GO