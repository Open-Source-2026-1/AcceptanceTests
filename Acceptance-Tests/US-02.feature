Feature: Inicio de sesión y redirección por rol

  Scenario Outline: Inicio de sesión como estudiante
    Given que el <usuario> es un estudiante registrado
    When ingresa su <correo> y <contraseña_valida>
    Then accede al buscador de tutorías
      And se muestra "Bienvenido estudiante"

    Examples: Datos de entrada
      | usuario        | correo                     | contraseña_valida |
      | Estudiante01   | est1@universidad.edu.pe   | Pass123!          |

    Examples: Datos de salida
      | mensaje_pantalla         | redireccion              |
      | Bienvenido estudiante    | Buscador de tutorías     |


  Scenario Outline: Inicio de sesión como profesor
    Given que el <usuario> es un profesor registrado
    When ingresa su <correo> y <contraseña_valida>
    Then accede a su dashboard analítico
      And se muestra "Bienvenido profesor"

    Examples: Datos de entrada
      | usuario        | correo                     | contraseña_valida |
      | Profesor01     | prof@universidad.edu.pe   | Pass123!          |

    Examples: Datos de salida
      | mensaje_pantalla        | redireccion              |
      | Bienvenido profesor     | Dashboard analítico      |


  Scenario Outline: Credenciales incorrectas (Negativo)
    Given que el <usuario> está en la página de inicio de sesión
    When ingresa un <correo> o <contraseña_incorrecta>
    Then el sistema muestra "Credenciales inválidas"

    Examples: Datos de entrada
      | usuario       | correo                  | contraseña_incorrecta |
      | Usuario003    | user@universidad.edu.pe | 123456                |

    Examples: Datos de salida
      | mensaje_pantalla        |
      | Credenciales inválidas  |