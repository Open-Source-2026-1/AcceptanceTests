Feature: Resolver quiz interactivo

  Scenario Outline: Resolver quiz exitosamente
    Given que el <usuario> recibió un quiz
    When responde y presiona "Enviar"
    Then el sistema muestra su <resultado>

    Examples: Datos de entrada
      | usuario        | resultado        |
      | Estudiante01   | 5/5 correctas    |

    Examples: Datos de salida
      | mensaje_pantalla     |
      | Puntaje mostrado     |