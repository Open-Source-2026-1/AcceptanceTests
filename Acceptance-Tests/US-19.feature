Feature: Visualizar billetera

  Scenario Outline: Revisar ingresos
    Given que el <tutor> recibió una donación
    When revisa su billetera
    Then ve el <monto>, <comision> y <neto>

    Examples: Datos de entrada
      | tutor     | monto  | comision | neto  |
      | Tutor01   | S/10   | S/0.50   | S/9.5 |

    Examples: Datos de salida
      | resultado                 |
      | Información mostrada      |