 Feature: Análisis exhaustivos y detallados a partir de documentos
 
     Como usuario
     quiero que SKYNET analice automáticamente los documentos que subo
     para extraer temas, definiciones clave, fórmulas y ejemplos, y así ahorrar tiempo en mi estudio.
 
Scenario Outline: Documento académico estándar 
 
Dado que el archivo contiene contenido estructurado
Cuando se carga en SKYNET
Entonces debe mostrar un resumen con los elementos identificados.
 
 
Examples: Datos de entrada
    | documento a subir / documento |
    | documento_academico.pdf  | 
 
Examples: Datos de salida
    | mensaje | 
    | Documento analizado exitosamente | 
 
Scenario Outline: Documento no estructurado
 
Dado que el contenido es difuso
Cuando se analice
Entonces el sistema debe ofrecer al usuario la opción de corregir o indicar manualmente los temas.
 
Examples: Datos de entrada
    | documento a subir / documento |
    | documento_no_estructurado.pdf | 
 
Examples: Datos de salida
    | mensaje | 
    | Contenido poco estructurado detectado, por favor indique manualmente los temas. |