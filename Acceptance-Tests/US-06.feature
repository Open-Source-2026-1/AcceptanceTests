Feature: Aplicar filtros a resultados de búsqueda

  Scenario Outline: Filtrar tutores por valoración
    Given que el <usuario> tiene una lista de <cantidad_tutores> tutores
    When aplica el filtro <filtro_valoracion>
    Then la lista se actualiza mostrando solo los tutores que cumplen el criterio

    Examples: Datos de entrada
      | usuario        | cantidad_tutores | filtro_valoracion            |
      | Estudiante01   | 20               | Solo tutores con 5 estrellas |

    Examples: Datos de salida
      | resultado                                |
      | Lista filtrada con tutores de 5 estrellas |