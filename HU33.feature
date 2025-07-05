Feature: Recibir insignias por hitos de estudio alcanzados

    Como usuario,
    quiero recibir insignias digitales por logros como estudiar varios días seguidos o resolver ejercicios sin errores,
    para mantenerme motivado y reconocer mis avances.

Scenario Outline: Desbloqueo de insignia

    Dado que el usuario completa la meta <meta alcanzada>
    Cuando accede a la opción "Insignias" dentro de su perfil
    Entonces se muestra la insignia <insignia desbloqueada> con el mensaje <mensaje de felicitacion>

Examples: Datos de entrada
    | meta alcanzada             |
    | 5 días de repaso           |
    | 10 ejercicios sin errores  |
    | 7 días consecutivos de estudio |

Examples: Datos de salida
    | insignia desbloqueada     | mensaje de felicitación                         |
    | Constancia Académica      | ¡Felicidades! Has estudiado 5 días seguidos.    |
    | Precisión Lógica          | ¡Excelente! No cometiste errores en 10 ejercicios. |
    | Disciplina Total          | ¡Increíble! 7 días consecutivos estudiando.     |

Scenario: Galería de logros

    Dado que el usuario desea revisar sus insignias
    Cuando accede a su perfil
    Entonces debe ver una sección con todas las insignias obtenidas y las que aún puede alcanzar
