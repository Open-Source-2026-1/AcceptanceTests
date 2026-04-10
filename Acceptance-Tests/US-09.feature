Feature: Gestión de solicitudes de tutoría

  Scenario Outline: Aceptar solicitud
    Given que el <tutor> recibe una solicitud
    When presiona "Aceptar"
    Then el estado cambia a "Agendada"
      And se habilita el chat con el aprendiz

    Examples: Datos de entrada
      | tutor        |
      | Tutor01      |

    Examples: Datos de salida
      | estado      | chat_habilitado |
      | Agendada    | Sí              |