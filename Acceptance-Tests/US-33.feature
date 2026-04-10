Feature: Microinteracciones en la interfaz

  Scenario Outline: Hover en tarjeta de tutor
    Given que el <usuario> visualiza tutores
    When pasa el cursor sobre una tarjeta
    Then esta aumenta ligeramente de tamaño

    Examples: Datos de entrada
      | usuario        |
      | Estudiante01   |

    Examples: Datos de salida
      | efecto_visual            |
      | Escalado de tarjeta      |


  Scenario Outline: Hover en botones
    Given que el <usuario> interactúa con botones
    When pasa el cursor
    Then el botón cambia de color

    Examples: Datos de entrada
      | usuario        |
      | Estudiante01   |

    Examples: Datos de salida
      | efecto_visual         |
      | Cambio de color       |