Feature: Configurar tipo y frecuencia de notificaciones

    Como usuario,
    quiero configurar desde mi perfil qué tipo de notificaciones deseo recibir (académicas, técnicas o de recordatorio)
    y con qué frecuencia,
    para tener control sobre las alertas que recibo.

Scenario: Selección de categorías

    Dado que el usuario accede a configuración
    Cuando edita las notificaciones
    Entonces debe poder activar o desactivar categorías específicas

Scenario Outline: Frecuencia

    Dado que el usuario no quiere saturación de notificaciones
    Cuando elige la frecuencia <frecuencia>
    Entonces el sistema debe enviar avisos solo según la configuración establecida

Examples: Datos de entrada
    | frecuencia     |
    | Diaria        |
    | Semanal       |
    | Mensual       |
