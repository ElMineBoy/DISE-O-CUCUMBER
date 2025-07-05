 Feature: Elegir tipo de ayuda dentro del módulo de soporte

     Como usuario
     quiero elegir fácilmente entre contactar al chatbot, revisar preguntas frecuentes o reportar un problema dentro del módulo de soporte
     para recibir el tipo de ayuda que necesito.


Scenario Outline: Visualización de opciones

Dado que el usuario ingresa al módulo de soporte
Cuando se carga la vista
Entonces debe mostrar claramente las tres opciones: (1) Hablar con ChatBot, (2) FAQ, (3) Reportar problema

Examples: Datos de entrada
    | usuario         | dispositivo       |
    | "ana_lopez"     | "escritorio"      |
    | "luis_martinez" | "teléfono móvil"  |
Examples: Datos de salida
    | opción 1             | opción 2     | opción 3           |
    | "Hablar con ChatBot" | "FAQ"        | "Reportar problema" |

