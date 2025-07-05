Feature: Elegir avatar o ícono personal para el asistente

    Como estudiante registrado y logueado,
    quiero personalizar el avatar o ícono de SKYNET
    para sentir que el asistente me representa o se adapta a mi estilo.

Scenario Outline: Selección de avatar

    Dado que el usuario accede a “Personalizar Asistente” dentro de configuraciones
    Cuando visualiza las opciones
    Entonces puede seleccionar el estilo <estilo visual> como su avatar
    Y el sistema muestra una vista previa con el avatar <avatar seleccionado>

Examples: Datos de entrada
    | estilo visual     |
    | Clásico futurista |
    | Minimalista       |
    | Anime             |

Examples: Datos de salida
    | avatar seleccionado     |
    | Ícono SKYNET clásico    |
    | SKYNET en modo simple   |
    | SKYNET estilo anime     |

Scenario: Visualización en interfaz

    Dado que el usuario ya eligió su avatar
    Cuando utiliza el chat o panel
    Entonces ese avatar debe mostrarse en la esquina o cabecera del asistente
