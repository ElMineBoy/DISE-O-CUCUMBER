Feature: Recuperar contraseña 
    Como usuario, 
    quiero poder recuperar mi contraseña mediante un enlace enviado al correo 
    para restablecer el acceso.

Scenario Outline: Solicitud de recuperación
Dado que olvidó su contraseña 
Cuando hace clic en “¿Olvidaste tu contraseña?” 
Entonces se solicita su <correo> y se envía un <enlace> de recuperación. 

Examples: Datos de entrada 
|correo|
|usuario@email.com|
Examples: Datos de salida 
|enlace|
|Enlace enviado al correo|

Scenario Outline: Restablecer con enlace 
Dado que recibió el correo 
Cuando hace clic en el <enlace> 
Entonces el sistema permite ingresar una <nueva contrasena> segura. 
Examples: Datos de entrada 
|enlace|
|Enlace de correo|  
Examples: Datos de salida 
|nueva contrasena|
|contraseniaNueva123@|



