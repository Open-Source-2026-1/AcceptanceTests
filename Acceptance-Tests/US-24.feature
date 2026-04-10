Feature: Reportar problema

  Scenario Outline: Reportar inasistencia
    Given que el <usuario> tuvo un problema
    When envía un reporte con <detalle>
    Then se genera un ticket en estado "Pendiente"

    Examples: Datos de entrada
      | usuario     | detalle                  |
      | Tutor01     | No asistió a la sesión   |

    Examples: Datos de salida
      | estado_ticket |
      | Pendiente     |