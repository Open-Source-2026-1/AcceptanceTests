Feature: Calificar tutor

  Scenario Outline: Dejar reseña
    Given que la sesión del <usuario> terminó
    When califica con <estrellas> y escribe <comentario>
    Then la reseña aparece en el perfil del tutor

    Examples: Datos de entrada
      | usuario        | estrellas | comentario              |
      | Estudiante01   | 5         | Excelente explicación   |

    Examples: Datos de salida
      | resultado              |
      | Reseña publicada       |