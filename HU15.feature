 Feature: Resolver consultas según sílabo y cursos matriculados

     Como usuario de una institución
     quiero que SKYNET resuelva mis preguntas basándose en los contenidos del sílabo y mis cursos activos
     para que las respuestas estén alineadas con lo que realmente debo aprender

Scenario Outline: Consulta con contexto

Dado que el usuario está en la plataforma institucional
Cuando el usuario realiza una consulta sobre <tema>
Entonces SKYNET debe vincular la respuesta al curso correspondiente y usar el enfoque pedagógico del sílabo.

Examples: Datos de entrada
    | tema |
    | "Teoría de la computación" |
    | "Física avanzada" | 

Examples: Datos de salida
   | curso relacionado        | enfoque pedagógico|
   | "Ciencias de la Computación" | "Enfoque práctico y teórico" |
   | "Física 3"               | "Enfoque experimental" |

Scenario Outline: Curso no identificado

Dado que la consulta es genérica
Cuando no se puede asociar a un curso
Entonces SKYNET debe sugerir elegir uno o subir un documento para contextualizar.

Examples: Datos de entrada
    | consulta |
    | "¿Qué es la computación cuántica?" |
    | "¿Qué es la teoría de cuerdas?"    |

Examples: Datos de salida
    | mensaje de sugerencia |
    | "Elija un curso o suba un documento para contextualizar" |

