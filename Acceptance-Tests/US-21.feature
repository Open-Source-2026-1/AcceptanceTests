Feature: Cancelar tutoría

  Scenario Outline: Cancelación exitosa
    Given que el <usuario> tiene una reserva
    When cancela la tutoría
    Then el estado cambia a "Cancelado"
      And el tutor es notificado

    Examples: Datos de entrada
      | usuario        |
      | Estudiante01   |

    Examples: Datos de salida
      | estado     | notificacion |
      | Cancelado  | Enviada      |