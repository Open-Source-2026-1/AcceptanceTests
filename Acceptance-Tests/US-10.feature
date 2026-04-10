Feature: Chat interno de tutoría

  Scenario Outline: Enviar mensaje en chat
    Given que la tutoría del <usuario> fue aceptada
    When envía el mensaje <mensaje>
    Then el otro usuario lo recibe en la plataforma

    Examples: Datos de entrada
      | usuario        | mensaje                     |
      | Estudiante01   | Hola, nos vemos a las 10   |

    Examples: Datos de salida
      | resultado              |
      | Mensaje recibido       |