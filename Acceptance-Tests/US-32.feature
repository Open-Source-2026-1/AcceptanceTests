Feature: Sección Sobre Nosotros

  Scenario Outline: Visualizar información de la empresa
    Given que el <usuario> está en la página principal
    When accede a "Sobre nosotros"
    Then visualiza descripción, misión, visión y equipo

    Examples: Datos de entrada
      | usuario        |
      | Visitante01    |

    Examples: Datos de salida
      | elementos_mostrados                 |
      | Descripción, misión, visión, equipo |


  Scenario Outline: Redirección a registro
    Given que el <usuario> leyó la sección
    When hace clic en "Registrarse"
    Then es redirigido al formulario de registro

    Examples: Datos de entrada
      | usuario        |
      | Estudiante01   |

    Examples: Datos de salida
      | redireccion           |
      | Página de registro    |