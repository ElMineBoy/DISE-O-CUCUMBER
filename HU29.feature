Feature: Cerrar sesión desde el menú de perfil

    Como usuario,
    quiero cerrar mi sesión de manera segura desde el menú de perfil
    para proteger mi información al finalizar el uso de SKYNET.

Scenario Outline: Visualización del botón

    Dado que el usuario hace clic en su <icono de perfil>
    Cuando se despliega el <menu>
    Entonces debe visualizarse la opción "opción de cerrar sesión"

Examples: Datos de entrada
    | icono de perfil |
    | icono_usuario_123 |

Examples: Datos de salida
    | menu            | 
    | menu_desplegado | 

Scenario Outline: Redirección

    Dado que el usuario confirma que desea cerrar sesión
    Cuando <usuario cierra sesion>
    Entonces el sistema debe redirigir a la pantalla de a la pantalla de
    inicio o bienvenida.

Examples: Datos de entrada
    | usuario cierra sesion |
    | confirma_cierre       |

Examples: Datos de salida
    | pantalla destino  |
    | pantalla_inicio   |
