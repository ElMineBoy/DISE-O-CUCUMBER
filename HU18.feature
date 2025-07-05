 Feature: Recibir notificaciones personalizadas de repaso

     Como usuario
     quiero recibir notificaciones automáticas de repaso según los temas que no he revisado recientemente o que he consultado repetidamente sin éxito
     para reforzar mis conocimientos y no olvidar contenidos clave.

Scenario Outline: Inactividad en un tema

Dado que el usuario no ha consultado un tema en más de <dias>
Cuando el sistema revisa su historial
Entonces debe enviar una notificación con sugerencia de repaso para ese tema

Examples: Datos de entrada
    | días  |
    | 5     |
    | 7     |


Examples: Datos de salida
    | tema consultado         | mensaje de notificación                               |
    | "Teoría de la relatividad" | "Es hora de repasar: Teoría de la relatividad."       |
    | "Física cuántica"        | "Es hora de repasar: Física cuántica."                |

Scenario Outline: Dificultad recurrente

Dado que el usuario ha preguntado varias veces por el mismo tema
Cuando SKYNET detecta este patrón
Entonces debe enviar una notificación con contenido adicional como ejercicios, explicaciones alternativas o recursos recomendados

Examples: Datos de entrada
    | tema consultado          | número de consultas |
    | "Ecuaciones cuadráticas" | 4                   |
    | "Cálculo integral"       | 3                   |

Examples: Datos de salida
    | tema consultado         | mensaje de notificación                               | contenido adicional                           |
    | "Ecuaciones cuadráticas" | "Has preguntado varias veces sobre Ecuaciones cuadráticas." | "Aquí tienes ejercicios adicionales y explicaciones alternativas." |
    | "Cálculo integral"       | "Has preguntado varias veces sobre Cálculo integral." | "Te sugerimos recursos adicionales y ejercicios prácticos." |

Scenario Outline: Interacción con la notificación

Dado que el usuario recibe una sugerencia
Cuando hace clic en ella
Entonces se debe abrir directamente el modo de repaso con resumen del tema, ejemplos y preguntas rápidas

Examples: Datos de entrada
    | tema consultado         |
    | "Ecuaciones cuadráticas" |
    | "Teoría de la relatividad" |

Examples: Datos de salida
    | tema consultado         | acción esperada                                     |
    | "Ecuaciones cuadráticas" | "Modo de repaso abierto con resumen, ejemplos y preguntas rápidas." |
    | "Teoría de la relatividad" | "Modo de repaso abierto con resumen, ejemplos y preguntas rápidas." |
