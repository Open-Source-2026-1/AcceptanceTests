Feature: Realizar donación

  Scenario Outline: Donación exitosa
    Given que el <usuario> desea donar
    When ingresa su <tarjeta> y monto <monto>
    Then el pago se procesa correctamente

    Examples: Datos de entrada
      | usuario        | tarjeta       | monto   |
      | Estudiante01   | 411111111111  | S/15.00 |

    Examples: Datos de salida
      | resultado           |
      | Pago exitoso        |