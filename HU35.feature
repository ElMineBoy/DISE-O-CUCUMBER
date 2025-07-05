Feature: Generar propuestas de horarios óptimos según cursos requeridos y disponibilidad

    Como usuario,
    quiero que SKYNET me genere automáticamente combinaciones de horarios posibles
    para los cursos que debo matricular, respetando mi disponibilidad horaria
    y evitando solapamientos,
    para facilitar mi decisión durante el proceso de matrícula.

Scenario Outline: Generación de combinaciones

    Dado que el usuario selecciona sus <horas disponibles>
    Y el usuario indica que su semana es de tipo <caracteristica de la semana>
    Cuando SKYNET analiza las secciones disponibles en la institución
    Entonces SKYNET presenta <combinaciones viables> de horario de matrícula

Examples: Datos de entrada
    | horas disponibles               | caracteristica de la semana  |
    | Lunes a Viernes de 8:00 a 14:00 | ligera                        |
    | Lunes a Jueves de 13:00 a 18:00 | con sobrecarga                |

Examples: Datos de salida
    | combinaciones viables                             |
    | 3 propuestas sin solapamientos                    |
    | 2 propuestas con mínima superposición controlada  |




 