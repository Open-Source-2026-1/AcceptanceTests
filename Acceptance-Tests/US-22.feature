Feature: Panel de gestión docente

  Scenario Outline: Navegación en dashboard
    Given que el <profesor> inicia sesión
    When visualiza el panel principal
    Then puede acceder a analíticas y quizzes

    Examples: Datos de entrada
      | profesor     |
      | Profesor01   |

    Examples: Datos de salida
      | elementos_visibles        |
      | Menú lateral y accesos    |