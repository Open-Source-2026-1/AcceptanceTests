Feature: Validación backend de registro

  Scenario Outline: Registro válido (201 Created)
    Given un request con <email>
    When el sistema valida el dominio
    Then retorna código 201
      And envía token de confirmación

    Examples: Datos de entrada
      | email                |
      | juan@upc.edu.pe      |

    Examples: Datos de salida
      | codigo | resultado              |
      | 201    | Usuario creado        |


  Scenario Outline: Dominio inválido (400 Bad Request)
    Given un request con <email_invalido>
    When el sistema valida el dominio
    Then retorna código 400

    Examples: Datos de entrada
      | email_invalido   |
      | luis@gmail.com   |

    Examples: Datos de salida
      | codigo | mensaje_error        |
      | 400    | Dominio inválido     |