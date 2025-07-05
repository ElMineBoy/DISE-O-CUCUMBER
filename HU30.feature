Feature: Recordatorio automático para cerrar sesión tras inactividad


    Como usuario,
    quiero que SKYNET me recuerde cerrar sesión si detecta inactividad prolongada,
    para evitar que mi cuenta quede expuesta en dispositivos compartidos.

Scenario: Inactividad prolongada

    Dado que el usuario no ha realizado acciones por más de 20 minutos
    Cuando el sistema detecta esta inactividad
    Entonces debe mostrar un aviso tipo popup indicando que a continuación se cerrará sesión

Scenario Outline: Tiempo configurable

    Dado que el usuario desea modificar el tiempo de cierre automático por inactividad
    Cuando accede a la configuración
    Entonces puede establecer el tiempo de cierre en <tiempo configurado> minutos

Examples: Datos de entrada
    | tiempo configurado |
    | 10                 |
    | 20                 |
    | 30                 |
    | 40                 |
