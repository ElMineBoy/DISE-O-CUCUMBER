Feature:Definir rol al registrarse
    Como usuario, 
    quiero definir mi rol (estudiante, autodidacta, etc) al registrarme 
    para que SKYNET adapte su comportamiento y el tipo de contenidos que me ofrece. 

Scenario Outline: Registro nuevo
Dado que se <registra> sin institución educativa 
Cuando finaliza el formulario de registro 
Entonces debe visualizar la opcion de seleccionar su <rol> y guardar esta configuración en su <perfil>.

Examples: Datos de entrada 
|registra|
|correo|
Examples: Datos de salida 
|perfil|rol|
|Rol guardado|Estudiante |


