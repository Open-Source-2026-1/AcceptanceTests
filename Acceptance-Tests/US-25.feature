Feature: Resolver disputas

  Scenario Outline: Aplicar sanción
    Given que el <profesor> revisa una disputa
    When valida la información
    Then aplica una <accion> y cierra el caso

    Examples: Datos de entrada
      | profesor     | accion               |
      | Profesor01   | Advertencia aplicada |

    Examples: Datos de salida
      | estado_caso |
      | Cerrado     |