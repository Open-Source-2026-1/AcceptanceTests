Feature: Generación de tokens WebRTC

  Scenario Outline: Generación exitosa de token
    Given un request del <usuario> en la hora válida
    When el backend valida permisos
    Then retorna credenciales WebRTC

    Examples: Datos de entrada
      | usuario      |
      | Usuario01    |

    Examples: Datos de salida
      | respuesta_json                  |
      | appId, canal, token generados   |


  Scenario Outline: Acceso fuera de horario (Negativo)
    Given un request fuera del horario permitido
    When el backend valida la hora
    Then retorna HTTP 403

    Examples: Datos de entrada
      | hora_request |
      | 08:00 AM     |

    Examples: Datos de salida
      | codigo | mensaje_error  |
      | 403    | Forbidden      |