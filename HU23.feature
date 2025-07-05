 Feature: Reportar un problema mediante formulario

     Como usuario
     quiero reportar un problema desde el módulo de soporte llenando un formulario con descripción, tipo de error y adjuntando capturas
     para que el equipo técnico pueda entender y resolver mejor la situación

Scenario Outline: Campos obligatorios

Dado que el usuario desea reportar un problema
Cuando abre el formulario
Entonces debe visualizar campos para descripción, tipo de error, adjunto y botón de envío

Examples: Datos de entrada
    | usuario         |
    | "sofia_mendez"  |
    | "juan_rios"     |

Examples: Datos de salida
    | campos visibles                          |
    | "Descripción, Tipo de error, Adjuntar archivo, Enviar" |
    | "Descripción, Tipo de error, Adjuntar archivo, Enviar" |


Scenario Outline: Validación del envío

Dado que el usuario completó el formulario
Cuando presiona “Enviar ticket”
Entonces debe generarse un ID de seguimiento y mostrarse un mensaje de confirmación

Examples: Datos de entrada
    | descripcion                           | tipo_error            | adjunto               |
    | "No puedo iniciar sesión"             | "Error de acceso"     | "captura_error1.png"  |
    | "Pantalla en blanco al abrir módulo"  | "Fallo visual"        | "captura_pantalla.jpg"|

Examples: Datos de salida
    | ID generado   | mensaje de confirmación                   |
    | "TCK-2451"    | "Tu ticket ha sido enviado correctamente" |
