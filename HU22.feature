 Feature: Revisar preguntas frecuentes personalizadas por tipo de estudiante (FAQ)

     Como usuario
     quiero revisar preguntas frecuentes organizadas según si soy estudiante independiente o institucional
     para encontrar respuestas relevantes sin contactar a soporte.

Scenario Outline: Filtro de tipo de usuario

Dado que el usuario accede a las FAQ
Cuando selecciona su tipo de estudiante: <tipo_usuario>
Entonces debe visualizar categorías específicas y preguntas asociadas a su contexto

Examples: Datos de entrada
    | usuario           | tipo_usuario         |
    | "valeria_lopez"   | "estudiante institucional" |
    | "diego_ramirez"   | "estudiante independiente" |

Examples: Datos de salida
    | categorías visibles                         | preguntas destacadas                                        |
    | "Acceso a plataforma, Asistencia académica" | "¿Cómo ingreso con mi correo institucional?"               |
    | "Pagos, Cursos libres"                      | "¿Cómo me inscribo a un curso sin estar matriculado?"      |

Scenario Outline: Preguntas expandibles

Dado que el usuario ve una lista de preguntas frecuentes
Cuando hace clic en la <pregunta>
Entonces debe desplegarse la respuesta directamente en la misma vista

Examples: Datos de entrada
    | pregunta                                          |
    | "¿Cómo ingreso con mi correo institucional?"      |
    | "¿Cómo me inscribo a un curso sin estar matriculado?" |

Examples: Datos de salida
    | respuesta visible                                                |
    | "Debes usar tu correo institucional proporcionado por la universidad." |
    | "Puedes inscribirte desde el portal de cursos abiertos en la sección de independientes." |
