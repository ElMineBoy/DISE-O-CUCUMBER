 Feature: Contactar soporte vía chatbot automatizado

     Como usuario
     quiero iniciar una conversación con un chatbot automatizado
     para intentar resolver problemas básicos.

Scenario Outline: Chat automatizado básico

Dado que el usuario selecciona “Contactar soporte”
Cuando inicia el chat
Entonces debe interactuar con un bot automatizado que responde con mensajes predefinidos

Examples: Datos de entrada
    | usuario         | consulta inicial                    |
    | "paula_garcia"  | "No puedo ingresar a mi cuenta"     |
    | "roberto_torres"| "¿Cómo cambio mi contraseña?"       |
Examples: Datos de salida
    | mensaje del bot                                                              |
    | "Hola, soy el asistente virtual. ¿Tienes problemas para iniciar sesión?"     |
    | "Para cambiar tu contraseña, sigue estos pasos..."                           |

