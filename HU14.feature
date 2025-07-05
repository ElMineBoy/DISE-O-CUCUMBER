 Feature: Corregir temas mal detectados en documentos
 
     Como usuario
     quiero poder corregir o editar los temas detectados por SKYNET en mis documentos
     para asegurarme de que la ayuda que reciba esté alineada con mis objetivos.

Scenario Outline: Revisión del análisis

Dado que SKYNET ha extraído temas de un documento
Cuando el usuario revisa el resumen
Entonces debe poder editar, eliminar o añadir temas manualmente.

Examples: Datos de entrada
   | documento a subir / documento |
   | documento_1.pdf  | 

Examples: Datos de salida
   | tema extraído        | acción esperada        |
   | Tema1                | Editar                 |
   | Tema2                | Eliminar               |

Scenario Outline: Guardado

Dado que el usuario ha corregido temas
Cuando confirma la edición
Entonces el sistema debe almacenar la nueva información personalizada.

Examples: Datos de entrada
    | documento            | temas corregidos        |
    | documento_1.pdf      | Tema1, Tema2            |

Examples: Datos de salida
    | mensaje de confirmación                        |
    | "Los cambios se han guardado correctamente"    |

