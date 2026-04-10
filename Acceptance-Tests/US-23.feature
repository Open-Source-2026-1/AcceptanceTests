Feature: Visualizar métricas académicas

  Scenario Outline: Identificar curso con alta demanda
    Given que el <profesor> revisa el dashboard
    When observa el gráfico
    Then identifica el curso <curso> con <reservas>

    Examples: Datos de entrada
      | profesor     | curso       | reservas |
      | Profesor01   | Cálculo II  | 50       |

    Examples: Datos de salida
      | resultado                      |
      | Curso identificado correctamente |