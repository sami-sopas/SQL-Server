
/*

+ Suma
- Resta
/ Division
* Multiplicacion
% Modulo
> Mayor
< Menor
= Igual
<> Distinto
*/

DECLARE @num1 DECIMAL(9,2) = 20
DECLARE @num2 DECIMAL(9,2) = 30
DECLARE @result DECIMAL(9,2)

SET @result = @num1 + @num2

PRINT @result

--------------------------------

DECLARE @text1 VARCHAR(20) = 'Hola me llamo'
DECLARE @text2 VARCHAR(10) = 'Juan'
DECLARE @textResult VARCHAR(30)

SET @textResult = @text1 + ' ' + @text2

PRINT @textResult


--------------------------------
DECLARE @n1 DECIMAL(9,2) = 20
DECLARE @n2 DECIMAL(9,2) = 10

IF (@n1 >= @n2)
	PRINT 'Si'