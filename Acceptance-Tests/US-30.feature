Feature: Endpoint de analítica académica

  Scenario Outline: Obtener datos de cursos
    Given un request con rol <rol>
    When el backend procesa la consulta
    Then retorna un JSON con cursos y totales

    Examples: Datos de entrada
      | rol       |
      | Profesor  |

    Examples: Datos de salida
      | codigo | respuesta_json                         |
      | 200    | [{"curso":"Física","total":45}]       |


  Scenario Outline: Acceso no autorizado (Negativo)
    Given un request con rol <rol>
    When el sistema valida permisos
    Then retorna HTTP 401

    Examples: Datos de entrada
      | rol        |
      | Estudiante |

    Examples: Datos de salida
      | codigo | mensaje_error     |
      | 401    | Unauthorized      |