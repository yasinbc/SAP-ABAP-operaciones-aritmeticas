*&---------------------------------------------------------------------*
*& Report ZOPERACIONES_ARITMETICAS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZOPERACIONES_ARITMETICAS.

DATA: vl_result(10)  TYPE n, "variable que guarda resultados UNICAMENTE de 10 DIGITOS
      vl_decimal(16) TYPE p DECIMALS 3, "variable guarda decimales de 16 digitos con 3 DECIMALES
      vl_char(16)    TYPE c.


"Suma
vl_result = 12 + 10.
WRITE:/ 'Suma NORMAL -> 12 + 10 = ', vl_result.
"Suma OBSOLETA
CLEAR: vl_result.
vl_result = 59.
ADD 10 TO vl_result.
WRITE:/ 'Con Suma OBSOLETA -> 59 + 10 = ', vl_result.


"Resta
vl_result = 120.
WRITE:/ 'Resta NORMAL -> 120 - 80 = ',vl_result.
"Resta OBSOLETA
CLEAR: vl_result.
SUBTRACT 33 FROM vl_result.
WRITE:/ 'Con Resta OBSOLETA -> 80 - 33 = ', vl_result.


"Multiplicacion
vl_result = 12 * 10.
WRITE:/ 'Multiplicacion NORMAL -> 12 * 10 = ',vl_result.
"Multiplicacion OBSOLETA
CLEAR: vl_result.
vl_result = 20.
MULTIPLY vl_result BY 5.
WRITE:/ 'Con Multiplicacion OBSOLETA -> 20 * 5 = ', vl_result.


"Division con CHAR
vl_char = vl_decimal.
WRITE:/ 'CHAR -> 80 - 33 = ', vl_CHAR.

CLEAR: vl_char.
vl_char = 20 / 3.
WRITE:/ '20 / 3 = ', vl_char.


"Division
vl_result = 80 / 33.
WRITE:/ 'Division NORMAL -> 80 / 33 = ', vl_result.
"Division OBSOLETA
CLEAR: vl_decimal.
vl_decimal = 20.
DIVIDE vl_decimal BY 5.
WRITE:/ 'Con Division OBSOLETA -> 20 / 5 = ', vl_decimal.


"Division ENTERA
CLEAR: vl_result.
vl_result = 30 DIV 4.
WRITE:/ 'Division ENTERA -> 30 / 4 = ', vl_result.

"Division RESIDUO (MODULO)
CLEAR: vl_result.
vl_result = 30 MOD 4.
WRITE:/ 'Division con RESIDUO (MODULO) -> 30 % 4 = ', vl_result.

"Exponente
CLEAR: vl_result.
vl_result = 3 ** 10.
WRITE:/ 'Exponente -> 3 ^ 10 = ', vl_result.