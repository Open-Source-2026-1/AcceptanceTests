Feature: Visualización de perfil de tutor

  Scenario Outline: Ver reseñas de un tutor
    Given que el <usuario> encontró un tutor
    When ingresa a su perfil
    Then puede visualizar su biografía, valoración y reseñas

    Examples: Datos de entrada
      | usuario        | tutor        |
      | Estudiante01   | Tutor123     |

    Examples: Datos de salida
      | elementos_mostrados                        |
      | Biografía, estrellas, comentarios alumnos  |