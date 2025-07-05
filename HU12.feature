Feature: Cargar documentos para consulta académica 
    Como usuario, 
    quiero cargar documentos académicos (PDF, Word, PPT, XLSX) en SKYNET 
    para que pueda analizar su contenido y ayudarme a comprender mejor los temas. 

Scenario Outline: Carga correcta
Dado que el usuario accede a la función de carga de documentos 
Cuando selecciona un <archivo> válido 
Entonces el sistema debe <confirmar> la carga e iniciar el <analisis>.
Examples:Datos de entrada
|archivo|
|documento.pdf|
Examples:Datos de salida
|confirmar|analisis|
|Carga existosa|Analisis iniciado|


Scenario Outline: Formato no compatible
Dado que el <archivo> no está permitido 
Cuando intenta subirlo 
Entonces el sistema debe mostrar un <mensaje> indicando los formatos válidos. 
Examples:Datos de entrada
|archivo|
|imagen.jpg|
Examples:Datos de salida
|mesaje|
|Formato no válido. Solo archivos permitido.|




