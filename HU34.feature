Feature: Recibir sugerencias de temas relacionados según historial

    Como estudiante registrado y logueado,
    quiero que SKYNET me sugiera temas relacionados con los que estoy estudiando
    para descubrir nuevos contenidos útiles y ampliar mi comprensión.

Scenario Outline: Sugerencia

    Dado que el usuario estudia el tema <tema actual>
    Cuando finaliza el estudio del tema
    Entonces el sistema sugiere automáticamente 2 a 3 <temas relacionados>

Examples: Datos de entrada
    | tema actual         |
    | Álgebra lineal      |
    | Programación básica |
    | Historia del Perú   |

Examples: Datos de salida
    | temas relacionados                                      |
    | Geometría analítica, Cálculo diferencial              |
    | Estructuras de datos, Algoritmos, Lógica              |
    | Historia universal, Historia económica del Perú       |
