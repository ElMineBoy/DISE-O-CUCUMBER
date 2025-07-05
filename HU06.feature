Feature: Visualizar menú principal personalizado 
    Como usuario, 
    quiero ver un menú principal adaptado a mis necesidades 
    para navegar por las funciones clave de la plataforma.
Scenario Outline: Nuevo usuario
Dado que acaba de <registrarse> 
Cuando accede al sistema 
Entonces debe visualizar un <menu> con las secciones: Perfil, Chats, Historial, Configuración, etc.
Examples: Datos de entrada 
|registrarse|
|correo|
Examples: Datos de salida 
|menu|
|Perfil, Chats, Historial, Configuración|

Scenario Outline: Usuario antiguo 
Dado que tiene historial y ha iniciado sesión antes 
Cuando accede al <menu> 
Entonces debe mostrar <accesos rapidos> a sus últimas actividades. 
Examples: Datos de entrada 
| menu  |
|menú lateral|
Examples: Datos de salida 
|accesos rapidos|
|Chat con soporte|


