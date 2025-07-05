Feature: Exportar reportes analíticos en PDF o Excel

    Como usuario,
    quiero exportar los reportes de consultas y rendimiento en formato PDF o Excel,
    para incluirlos en informes académicos o compartirlos con la coordinación.

Scenario Outline: Opción de exportación

    Dado que el usuario ha generado un reporte analítico
    Cuando hace clic en la opción "Exportar"
    Y selecciona el formato <formato seleccionado>
    Entonces el sistema descarga el reporte en formato <archivo generado>

Examples: Datos de entrada
    | formato seleccionado |
    | PDF                  |
    | Excel                |

Examples: Datos de salida
    | archivo generado     |
    | reporte_analitico.pdf |
    | reporte_analitico.xlsx |
