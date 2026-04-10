Feature: Enviar solicitud de reserva

  Scenario Outline: Enviar solicitud de tutoría
    Given que el <usuario> está en el perfil del tutor
    When selecciona la <fecha_hora> y escribe el <mensaje>
    Then la solicitud queda en estado "Pendiente"

    Examples: Datos de entrada
      | usuario        | fecha_hora   | mensaje                  |
      | Estudiante01   | Viernes 10AM | Ayuda con integrales     |

    Examples: Datos de salida
      | estado_solicitud |
      | Pendiente        |


  Scenario Outline: Tutor de misma universidad (Negativo)
    Given que el <usuario> está en el perfil de un tutor de su misma universidad
    When intenta solicitar tutoría
    Then el botón "Solicitar tutoría" no está disponible

    Examples: Datos de entrada
      | usuario        |
      | Estudiante02   |

    Examples: Datos de salida
      | estado_boton        |
      | Deshabilitado       |