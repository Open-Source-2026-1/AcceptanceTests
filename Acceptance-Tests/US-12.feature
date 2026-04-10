Feature: Iniciar videollamada

  Scenario Outline: Ingreso a sesión
    Given que es la hora de la tutoría del <usuario>
    When presiona "Iniciar Videollamada"
    Then se conecta a la sala virtual

    Examples: Datos de entrada
      | usuario        |
      | Estudiante01   |

    Examples: Datos de salida
      | resultado              |
      | Conectado a la sesión  |