 Feature: Acceder al módulo de soporte desde el menú principal

     Como usuario
     quiero acceder al módulo de soporte técnico desde el menú principal de SKYNET
     para recibir ayuda cuando tengo problemas o dudas sobre el funcionamiento de la plataforma.

Scenario Outline: Ubicación de la opción de soporte

Dado que el usuario accede al menú principal
Cuando busca la opción soporte
Entonces debe visualizar una opción claramente identificada con ícono y texto “Soporte / Ayuda”.

Examples: Datos de entrada
    | usuario          | plataforma     |
    | "carla_mendoza"  | "web"          |
    | "mario_rios"     | "aplicación móvil" |

Examples: Datos de salida
    | elemento visible         | ícono           | texto mostrado     |
    | botón "Soporte / Ayuda"  | icono-ayuda.svg | "Soporte / Ayuda"  |

