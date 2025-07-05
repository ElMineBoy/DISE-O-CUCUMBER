 Feature: Explicación paso a paso en consultas

     Como usuario
     quiero que SKYNET me explique paso a paso cómo resolver un problema o entender un concepto
     para aprender de forma guiada y no solo obtener respuestas directas.

Scenario Outline: Solicitud con paso a paso

Dado que el usuario está en la plataforma institucional
Cuando el usuario realiza una consulta sobre <tema>
Entonces SKYNET debe vincular la respuesta al curso correspondiente y usar el enfoque pedagógico del sílabo.

Examples: Datos de entrada
    | tema                                   | medio     |
    | "Cómo resolver ecuaciones cuadráticas" | voz       |
    | "¿Qué es la teoría de la relatividad?" | texto     |

Examples: Datos de salida
   | procedimiento dividido en etapas          | ejemplo por etapa                  |
   | "Etapa 1: Entender conceptos clave, Etapa 2: Aplicar fórmulas, Etapa 3: Resolver problemas" | "Ejemplo de relatividad: La luz se curva cerca de cuerpos masivos" |


