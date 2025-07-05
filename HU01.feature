Feature: Registrarse en la plataforma mediante correo o redes sociales
    Como usuario, 
    quiero registrarme en la plataforma usando mi correo electrónico o redes sociales 
    para poder crear una cuenta rápidamente. 

Scenario Outline: Usuario se registra con correo
Dado que está en la página principal 
Cuando selecciona "Registrarse" y elige correo 
Entonces el sistema debe pedir <nombre>, <correo> y <contrasena> valida 
Y crear la <cuenta> si los datos son válidos. 

Examples: Datos de entrada 
|nombre| correo | contrasena |
|Ana Pérez | ana@email.com | Ana123!|

Examples: Datos de salida
|Cuenta|
|Cuenta creada para Ana Pérez|


Scenario Outline: Usuario se registra con redes sociales 
Dado que el usuario elige redes sociales 
Cuando autentica vía <Google o Facebook> 
Entonces el sistema debe crear su <cuenta> automáticamente.
Examples: Datos de entrada
|Proveedor|
|Google/Facebook|
Examples: Datos de salida
|Cuenta|
|Cuenta creada para Google|

