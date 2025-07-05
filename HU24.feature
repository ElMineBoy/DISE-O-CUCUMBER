Feature: Ver estado de mis tickets de soporte

    Como usuario,
    quiero poder revisar el estado de los tickets que he enviado desde una pestaña llamada “Mis Tickets”
    para hacer seguimiento a mis solicitudes de ayuda.

Scenario Outline: Visualización de tickets

    Dado que el usuario accede a la sección de soporte  
    Cuando consulta “Mis Tickets”  
    Entonces debe visualizar una tabla con <ID>, <fecha>, <estado> (pendiente, en revisión, resuelto)  
    Y una opción para abrir cada <detalle>

Examples: Datos de entrada
    | ID          | fecha       | estado       |
    | TICKET-001  | 2025-06-15  | pendiente    |
    | TICKET-002  | 2025-06-16  | en revisión  |
    | TICKET-003  | 2025-06-17  | resuelto     |

Examples: Datos de salida
    | detalle                             |
    | Error al acceder al módulo de notas |
    | Problema al cargar el perfil        |
    | Solicitud de cambio de contraseña   |

Scenario Outline: Cambio de estado

    Dado que el equipo técnico actualiza un ticket  
    Cuando el usuario revisa el ticket  
    Entonces debe ver el nuevo estado <estado> reflejado en tiempo real

Examples: Datos de entrada
    | ID          | estado anterior | estado      |
    | TICKET-001  | pendiente       | en revisión |
    | TICKET-002  | en revisión     | resuelto    |

Examples: Datos de salida
    | estado      |
    | en revisión |
    | resuelto    |
