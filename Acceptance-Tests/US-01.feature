Feature: Registro con correo institucional (.edu.pe)

  Scenario Outline: Registro exitoso con correo institucional válido
    Given que el <usuario> está en la página de registro
    When ingresa el <correo_institucional> y una <contraseña_valida>
    Then el sistema crea la cuenta y envía un enlace de confirmación
      And se muestra "Registro exitoso"

    Examples: Datos de entrada
      | usuario       | correo_institucional        | contraseña_valida |
      | Usuario001    | juan@universidad.edu.pe     | Password123!      |

    Examples: Datos de salida
      | mensaje_pantalla   | correo_enviado                          |
      | Registro exitoso   | Enlace de confirmación enviado          |


  Scenario Outline: Registro con correo no institucional (Negativo)
    Given que el <usuario> está en la página de registro
    When ingresa el <correo_invalido> y una <contraseña_valida>
    Then el sistema muestra "Solo se admiten correos institucionales peruanos"
      And no se crea la cuenta

    Examples: Datos de entrada
      | usuario       | correo_invalido     | contraseña_valida |
      | Usuario002    | juan@gmail.com      | Password123!      |

    Examples: Datos de salida
      | mensaje_pantalla                                      |
      | Solo se admiten correos institucionales peruanos       |