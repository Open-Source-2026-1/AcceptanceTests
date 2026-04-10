Feature: Crear Quiz en banco oficial

  Scenario Outline: Publicar quiz
    Given que el <profesor> crea <cantidad_preguntas> preguntas
    When presiona "Publicar"
    Then el quiz queda disponible en el banco oficial

    Examples: Datos de entrada
      | profesor     | cantidad_preguntas |
      | Profesor01   | 3                  |

    Examples: Datos de salida
      | resultado             |
      | Quiz publicado        |