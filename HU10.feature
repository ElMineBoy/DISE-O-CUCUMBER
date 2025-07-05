Feature:Activar SKYNET mediante click desde la interfaz 
    Como usuario, 
    quiero poder activar SKYNET haciendo click sobre un ícono visible en pantalla 
    para iniciar e escribir fácilmente una consulta sin depender de comandos de voz. 
Scenario Outline:Botón de activación visible 
Dado que el usuario está navegando en la plataforma 
Cuando hace <click> en el ícono de SKYNET 
Entonces se debe mostrar la <interfaz> del asistente lista para recibir preguntas mediante texto. 

Examples:Datos de entrada 
|click|
|ícono Skynet|
Examples:Datos de salida
|interfaz|
|Asistente listo para texto|

Scenario Outline: Plataforma institucional 
Dado que el usuario está en su aula virtual 
Cuando presiona el <boton> 
Entonces la ventana del asistente debe <iniciarse> en contexto del curso ubicado.
Examples:Datos de entrada 
|boton|
|activado|
Examples:Datos de salida
|iniciarse|
|curso detectado|


