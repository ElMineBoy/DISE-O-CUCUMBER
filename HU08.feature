Feature: Seleccionar área de estudio, nivel y temas de interés
    Como usuario, 
    quiero seleccionar mi área académica, nivel de conocimiento y temas de interés 
    para que SKYNET me proporcione respuestas, ejercicios y materiales adaptados a mis necesidades. 

Scenario Outline: Configuración inicial
Dado que el usuario ya definió su <rol> 
Cuando accede a la <configuracion> de perfil 
Entonces debe poder elegir su <area> (ej. matemáticas, historia), <nivel> (básico, medio, avanzado) y <temas> específicos.

Examples:Datos de entrada 
|rol|area|nivel|temas|
|estudiante|historia|básico|Inca|
Examples:Datos de salida
|configuracion|
|Preferencias guardadas|

Scenario Outline: Modificación posterior
Dado que desea actualizar sus <preferencias> 
Cuando modifica el perfil 
Entonces las nuevas <configuraciones> deben afectar las respuestas futuras de SKYNET. 
Examples:Datos de entrada 
|preferencias|
|programacion-medio-lambda|
Examples:Datos de salida
|configuraciones|
|Preferencias guardadas|


