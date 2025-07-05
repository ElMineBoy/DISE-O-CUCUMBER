Feature: Acceder a panel de rendimiento de estudiantes

    Como usuario,
    quiero acceder a un panel donde pueda visualizar el rendimiento de mis estudiantes organizados por curso,
    para detectar quiénes necesitan refuerzo y brindar un acompañamiento pedagógico más personalizado.

Scenario Outline: Panel por curso

    Dado que el usuario tiene varios cursos asignados  
    Cuando accede al panel de rendimiento  
    Entonces debe visualizar una lista de cursos  
    Y al ingresar a un <curso>, una tabla con <estudiantes>, <temas consultados> y <nivel> estimado de dominio

Examples: Datos de entrada
    | curso      |
    | Álgebra I  |
    | Física II  |

Examples: Datos de salida
    | estudiantes     | temas consultados       | nivel  |
    | Juan Pérez     | Integrales, Derivadas   | Medio  |
    | Ana Rodríguez  | Cinemática, Dinámica    | Bajo   |

Scenario Outline: Filtro por estudiante

    Dado que desea enfocar un caso individual  
    Cuando selecciona un <estudiante>  
    Entonces debe visualizar su <historial> de uso, <consultas frecuentes> y <tiempos de repaso>

Examples: Datos de entrada
    | estudiante     |
    | Juan Pérez     |
    | Ana Rodríguez  |

Examples: Datos de salida
    | historial           | consultas frecuentes        | tiempos de repaso|
    | 15 sesiones en 2 sem| Derivadas, Límite           | 6 horas totales  |
    | 10 sesiones en 1 sem| Dinámica, Leyes de Newton   | 4 horas totales  |
