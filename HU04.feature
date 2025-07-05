Feature: Bloqueo temporal por intentos fallidos de login 
    Como usuario, 
    quiero que se bloquee mi cuenta temporalmente tras varios intentos fallidos 
    para prevenir accesos no autorizados.


Scenario Outline:  Usuario excede intentos fallidos 
Dado que fallo más de 3 veces 
Cuando <intenta> iniciar sesión 
Entonces se <bloquea la cuenta> por 10 minutos 
Y se muestra un <mensaje> de advertencia. 

Examples: Datos de entrada 
|intenta|
|3|

Examples: Datos de salida 
|bloquea la cuenta|mensaje|
|Cuenta bloqueada|Has superado los intentos permitidos|


