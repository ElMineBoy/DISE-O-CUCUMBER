Feature: Validación mediante CAPTCHA 
    Como usuario, 
    quiero que se implemente un mecanismo de validación que garantice que mi cuenta no está siendo accedida por bots, 
    para proteger mi seguridad informática.

Scenario Outline: Activación de CAPTCHA tras fallos
Dado que el usuario <falla> 3 veces el login 
Cuando lo intenta de nuevo 
Entonces se muestra un <CAPTCHA> 
Y se debe completar correctamente para continuar 
intentando iniciar sesión. 

Examples: Datos de entrada 
|datos incorrectos|falla|
|AnaHuaman - ana12345|3|

Examples: Datos de salida 
|CAPTCHA|
|CAPTCHA basico|

