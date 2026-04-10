Feature: Búsqueda de tutores por palabra clave

  Scenario Outline: Visualización de resultados de búsqueda
    Given que el <usuario> ha buscado una <materia>
    When la página de resultados carga
    Then se muestran tarjetas de tutores con su información

    Examples: Datos de entrada
      | usuario        | materia   |
      | Estudiante01   | Física    |

    Examples: Datos de salida
      | elementos_mostrados                          |
      | Foto, nombre, universidad, calificación      |


  Scenario Outline: Búsqueda exitosa de tutores
    Given que el <usuario> necesita ayuda en <materia>
    When escribe la <materia> en el buscador
    Then se muestra una lista de tutores disponibles

    Examples: Datos de entrada
      | usuario        | materia   |
      | Estudiante02   | Física    |

    Examples: Datos de salida
      | resultado                      |
      | Lista de tutores disponibles   |