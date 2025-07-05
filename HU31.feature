Feature: Cambiar idioma de la interfaz

    Como usuario,
    quiero cambiar el idioma de la interfaz de SKYNET y de las respuestas del asistente,
    para poder estudiar en el idioma que más se ajuste a mis necesidades o práctica.

Scenario Outline: Cambio de idioma en configuración

    Dado que el usuario accede a su perfil
    Cuando elige el idioma <idioma seleccionado>
    Entonces la interfaz y las respuestas de SKYNET se muestran en <idioma aplicado>

Examples: Datos de entrada
    | idioma seleccionado |
    | Español             |
    | Inglés              |
    | Portugués           |

Examples: Datos de salida
    | idioma aplicado     |
    | Español             |
    | Inglés              |
    | Portugués           |

Scenario: Idioma detectado automáticamente

    Dado que el sistema reconoce el idioma del navegador
    Cuando el usuario inicia sesión por primera vez
    Entonces debe sugerir el idioma predeterminado acorde a la región
