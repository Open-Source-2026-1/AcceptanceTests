Feature: Pantalla de inicio de la plataforma

  Scenario Outline: Visualizar información inicial
    Given que el <usuario> ingresa por primera vez
    When carga la landing page
    Then visualiza beneficios e información de la plataforma

    Examples: Datos de entrada
      | usuario        |
      | Visitante01    |

    Examples: Datos de salida
      | elementos_mostrados                      |
      | Beneficios, info, equipo, navegación     |