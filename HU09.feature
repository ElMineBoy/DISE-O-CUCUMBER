Feature: Activar SKYNET mediante comandos de voz 
    Como usuario, 
    quiero activar SKYNET utilizando mi voz 
    para poder usar el asistente sin necesidad de escribir, especialmente cuando estoy usando dispositivos móviles o tengo las manos ocupadas. 

Scenario Outline: Micrófono disponible 
Dado que el <microfono> está habilitado y tiene permisos 
Cuando el usuario <dice> "Skynet" seguido de una pregunta 
Entonces el sistema debe <activarse> automáticamente y proporcionar una <respuesta> por voz o en texto. 
Examples:Datos de entrada 
|microfono|dice|
|activado|Skynet, ¿que hora es?|
Examples:Datos de salida
|activarse|respuesta|
|activo|La respuesta es 4(respuesta en texto)/ son las 3:15 p.m(respues en voz)|

Scenario Outline: Micrófono bloqueado 
Dado que el <microfono> no está disponible 
Cuando se intenta activar por voz 
Entonces el sistema debe <notificar> que no puede escuchar comandos y <sugerir> usar clic o texto. 
Examples:Datos de entrada 
|microfono|
|desactivado|
Examples:Datos de salida
|notificar|sugerir|
|no se puede escuchar|hacer click|


