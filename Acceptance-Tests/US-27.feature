Feature: Integración de pasarela de pagos

  Scenario Outline: Transacción aprobada
    Given un request de donación con monto <monto>
    When la API responde con estado <estado>
    Then el backend calcula la comisión
      And guarda <comision> para la plataforma y <neto> para el tutor

    Examples: Datos de entrada
      | monto   | estado     |
      | S/20.00 | succeeded  |

    Examples: Datos de salida
      | comision | neto    |
      | S/1.00   | S/19.00 |


  Scenario Outline: Fondos insuficientes (Negativo)
    Given un request de donación
    When la API responde con <error>
    Then el backend retorna código HTTP 402

    Examples: Datos de entrada
      | error               |
      | insufficient_funds  |

    Examples: Datos de salida
      | codigo | mensaje_error        |
      | 402    | Pago rechazado       |