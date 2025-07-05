 Feature: Visualizar historial de temas consultados

     Como usuario
     quiero acceder a un historial de los temas que he consultado dentro de SKYNET
     para llevar un control de lo que he estudiado, identificar patrones y retomar contenidos fácilmente.

Scenario Outline: Acceso al historial

Dado que el usuario ha realizado múltiples consultas
Cuando el usuario accede a la sección "Historial"
Entonces debe visualizar una lista cronológica con los temas consultados, fecha y número de veces

Examples: Datos de entrada
    | usuario            |
    | "juan_perez"       |
    | "maria_gomez"      |

Examples: Datos de salida
    | tema consultado           | fecha       | número de veces |
    | "Ecuaciones cuadráticas"  | 2025-07-01  | 5               |
    | "Teoría de la relatividad"| 2025-07-02  | 3               |

Scenario Outline: Información de dominio

Dado que hay temas con múltiples interacciones
Cuando el sistema detecta repeticiones
Entonces debe mostrar un indicador visual de nivel de dominio (bajo, medio, alto) basado en frecuencia y tipo de consulta

Examples: Datos de entrada
    | tema consultado           | número de interacciones | tipo de consulta |
    | "Ecuaciones cuadráticas"  | 5                       | "teoría"         |
    | "Física cuántica"         | 2                       | "ejemplo"        |

Examples: Datos de salida
    | tema consultado           | indicador visual de nivel de dominio |
    | "Ecuaciones cuadráticas"  | "Alto"                             |
    | "Física cuántica"         | "Bajo"                             |
