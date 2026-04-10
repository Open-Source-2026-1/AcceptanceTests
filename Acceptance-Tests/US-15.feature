Feature: Asignar quiz al aprendiz

  Scenario Outline: Enviar quiz
    Given que el <tutor> termina la sesión
    When selecciona el <quiz> y lo envía
    Then el aprendiz lo recibe en el chat

    Examples: Datos de entrada
      | tutor      | quiz        |
      | Tutor01    | Cinemática  |

    Examples: Datos de salida
      | resultado            |
      | Quiz recibido        |