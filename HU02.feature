


Feature: Iniciar sesión con usuario y contraseña 
    Como usuario, 
    quiero iniciar sesión con mis credenciales 
    para acceder a mi cuenta personalizada.

Scenario Outline: Ingreso exitoso
Dado que el usuario tiene cuenta registrada 
Cuando introduce sus <credenciales> 
Entonces el sistema debe <autenticar> y redirige al <menu> 

Examples: Datos de entrada 
|credenciales|estado|
|Ana Pérez - Ana123!|menu|

Examples: Datos de salida 
|autenticar|
|autenticar exitosamente|

Scenario Outline: Credenciales inválidas
Dado que el usuario escribe <datos incorrectos> 
Cuando el usuario lo <intenta> 3 veces 
Entonces el sistema debe activar el <CAPTCHA>

Examples: Datos de entrada 
|datos incorrectos|intenta|
|AnaHuaman - ana12345|3|

Examples: Datos de salida 
|CAPTCHA|
|CAPTCHA basico|



