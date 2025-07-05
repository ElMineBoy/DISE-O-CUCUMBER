 Feature: Generación de código confiable para trabajos de programación

     Como estudiante
     quiero que SKYNET genere un código confiable
     para poder aplicarlo en mis trabajos de programación


Scenario Outline: La aplicación genera código confiable y funcional exitosamente

Dado que el estudiante se encuentra en la pantalla de chat con Skynet
Cuando el estudiante le escriba a SKYNET para pedirle que genere un <codigo> explicando detalladamente qué debe abarcar
Y el estudiante haga clic en el botón "Enviar mensaje"
Entonces la aplicación genera un código confiable y funcional
Y muestra en la parte inferior del chat el <mensaje>: "Aquí tienes un código que te puede ayudar a resolver tu problema."

Examples: Datos de entrada
    | código (explicación)                                            | “Enviar mensaje” |
    | "Generar código para calcular la media de una lista de números" | Botón clickeado    |



Examples: Datos de salida
    | mensaje                                                                 |
    | "Aquí tienes un código que te puede ayudar a resolver tu problema."  |


Scenario Outline: La aplicación genera código poco funcional

Dado que el estudiante se encuentra en la pantalla de chat con Skynet
Cuando el estudiante le escriba a SKYNET para pedirle que genere un <código> para resolver su problema explicando confusamente qué debe abarcar o directamente sin explicar qué debe abarcar
Y el estudiante haga clic en el botón "Enviar mensaje"
Entonces la aplicación genera un código que no abarca los contenidos que el usuario quiere
Y muestra en la parte inferior del chat el <mensaje>: "Advertencia: El código generado puede requerir ajustes adicionales según tu necesidad específica, ya que la solicitud no fue del todo clara. Si deseas, puedo ayudarte a mejorarlo."

Examples: Datos de entrada
    | código (explicación confusa)                                    | “Enviar mensaje” |
    | "Generar código para... no sé... algo con números o listas"     | Botón clickeado    |

Examples: Datos de salida
    | mensaje |
    | "Advertencia: El código generado puede requerir ajustes adicionales según tu necesidad específica, ya que la solicitud no fue del todo clara. Si deseas, puedo ayudarte a mejorarlo." |

Scenario Outline: La aplicación falla en generar el código

Dado que el estudiante se encuentra en la pantalla de chat con Skynet
Cuando el estudiante le escriba a SKYNET para pedirle que genere un <codigo> para resolver su problema
Y el estudiante ocasione alguna interrupción durante el envío, como cerrar la aplicación abruptamente
Entonces la aplicación mostrará un <mensaje> en el chat diciendo: "Lo siento, no he podido generar tu código."

Examples: Datos de entrada
    | código (explicación)                                             | “Enviar mensaje”  |
    | "Generar código para ordenar una lista de enteros de forma ascendente" | Botón clickeado    |

Examples: Datos de salida
    | mensaje                                             |
    | "Lo siento, no he podido generar tu código."        |