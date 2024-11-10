
--Left and Right
DECLARE @var1 varchar(20)
DECLARE @var2 varchar(20)
SET @var1 = 'Ramiro'
SET @var2 = 'Gonzalez'
PRINT LEFT(@var1, 2) -- Ra
PRINT Right(@var1, 2) -- ro
PRINT LEFT(@var1,1) + RIGHT(@var2,1) -- Rz

SELECT LEFT(nombre,1) + '. ' + apellido
FROM Paciente -- J. Alimañan, C. Ramirez, etc...


--Len
PRINT LEN(@var1)
SELECT LEN(domicilio) FROM Paciente


--Ltrim  y Rtrim (eliminar espacios en cadenas)
SELECT LTRIM(RTRIM(@var1)) + RTRIM(@var2) + '|'

--Concat
SELECT CONCAT(@var1,' ',@var2)

--GetDate and GetUTCDate and Dates
SELECT GETDATE() --2024-11-09 21:49:11.257
SELECT GETUTCDATE() --2024-11-10 03:49:55.510 (Hora definida por el meridiano de Greenwich)

--Recibe 3 Parametros
--Parametro a modificar (dias, mes, año etc)
--Cantidad a agregar
--fecha a modificar
SELECT DATEADD(day,2,GETDATE())

--Datepart
--Permite obtener un intervalo de una fecha
-- Intervalo (dia, mes etc)
-- Fecha a modificar
SELECT DATEPART(month, GETDATE()) --Retorna 11 (Mes Noviembre)
SELECT DATEPART(year, GETDATE()) -- 2024

PRINT ISDATE(GETDATE()) --1
PRINT ISDATE('NOT DATE') --0


--CAST y CONVERT
--CAST: Funcion generica, convierte un tipo de dato en otro (si son compatibles)
--CONVERT: Permite hacer conversiones con mas detalles (Ex: de INT a CHAR)

DECLARE @num MONEY
SET @num = 500.40
PRINT @num

--SELECT CAST(idPaciente AS MONEY) AS idPaciente FROM Paciente
--SELECT CAST(@num AS INT)

DECLARE @fecha DATETIME
SET @fecha = GETDATE()
PRINT @fecha --Nov 9 2024

-- Param1, Parametro al que lo queremos convertir
-- Param2, Variable que quiero convertir
-- Param3 (opcional), Si le estoy pasando un DATETIME, decirle que formato quiero devolver
PRINT CONVERT(CHAR(20), @fecha,112) -- 20231109
