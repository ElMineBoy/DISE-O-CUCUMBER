Feature: Visualizar reportes analíticos de consultas frecuentes

    Como usuario,
    quiero ver reportes que muestren los temas más consultados o problemáticos entre mis estudiantes,
    para adaptar mejor mis clases y reforzar conceptos críticos.

Scenario: Reporte general por curso

    Dado que el usuario accede al panel
    Cuando selecciona la opción de reportes
    Entonces debe ver un gráfico con los temas más consultados,
    el número de interacciones y patrones de dificultad

Scenario Outline: Reporte por unidad

    Dado que el usuario desea analizar por tema
    Cuando filtra por <filtro>
    Entonces el sistema debe mostrar las estadísticas de <temas consultados>, <interacciones> y <patron de dificultad> correspondientes a ese segmento

Examples: Datos de entrada
    | filtro       |
    | unidad 3     |
    | semana 5     |
    | unidad 1     |

Examples: Datos de salida
    | temas consultados       | interacciones | patrón de dificultad |
    | Derivadas, Límite       | 45            | Alto                 |
    | Cinemática, Dinámica    | 30            | Medio                |
    | Integrales              | 60            | Bajo                 |
