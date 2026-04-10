Feature: Registrar cuenta bancaria

  Scenario Outline: Guardar datos bancarios
    Given que el <tutor> tiene saldo disponible
    When ingresa su <cci> y guarda
    Then se habilita el retiro

    Examples: Datos de entrada
      | tutor     | cci            |
      | Tutor01   | 002123456789   |

    Examples: Datos de salida
      | estado_retiro     |
      | Habilitado        |