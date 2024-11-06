USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 11/5/2024 6:29:56 PM ******/
SET ANSI_NULLS ON --Indica que si se hiciera una consulta como esta -> SELECT * FROM Paciente WHERE idPaciente = NULL; No devolveria nada
GO
SET QUOTED_IDENTIFIER ON --Permite crear Objetos en SQLServer que tengan el mismo nombre que una palabra reservada
GO

ALTER PROCEDURE [dbo].[S_paciente] (
	@idPaciente INT
)
AS

--Declarar variable (Objeto en memoria que existe durante el script)
DECLARE @ordenamiento CHAR(1); --NULL
DECLARE @valorOrdenamiento CHAR(1); --NULL

--ISNULL permite cambiar el valor de una variable en caso de que sea NULA
SET @valorOrdenamiento = ISNULL(@ordenamiento,'A');

PRINT 'Valor'
PRINT @valorOrdenamiento




SELECT apellido,nombre,idPais,observacion FROM Paciente WHERE idPaciente = @idPaciente;





--Esto devolveria valores si el campo telefono es NULL, pero no los demas
--SET ANSI_NULLS OFF
--SELECT * FROM Paciente WHERE telefono = NULL;

--Esto permite crear objetos de sql server usando palabras reservadas encerradas entre comillas para poder usarlas
--SET QUOTED_IDENTIFIER ON
--CREATE TABLE "select" (
--	campo1 VARCHAR(50)
--)
