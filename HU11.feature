Feature: Interactuar con SKYNET escribiendo preguntas
    Como usuario, 
    quiero escribir mis preguntas en un cuadro de texto 
    para interactuar con SKYNET de forma precisa.

Scenario Outline: Cuadro de texto activo 
Dado que el usuario accede a SKYNET a través de un <click> 
Cuando empieza a escribir una <consulta> 
Entonces debe poder enviarla con “Enter” o click en enviar, y recibir una <respuesta estructurada>. 
Examples:Datos de entrada 
|click|consulta|
|enviar|¿Qué es la Segunda Guerra Mundial?|
Examples:Datos de salida
|respuesta estructurada|
|Breve resumen con fechas, países y consecuencias.|

Scenario Outline: Consulta redactada incorrectamente 
Dado que la <consulta> es ambigua o confusa 
Cuando se recibe el <mensaje> 
Entonces SKYNET debe <repreguntar> para precisar la intención del usuario antes de responder. 
Examples:Datos de entrada
|consulta|mensaje|
|pregunta general | Hazlo como antes   |
Examples:Datos de salida
|repreguntar|
|¿Podrías especificar a qué te refieres?|



