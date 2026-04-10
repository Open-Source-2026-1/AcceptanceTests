Feature: Cambio de idioma en la plataforma

  Scenario Outline: Cambio dinámico de idioma
    Given que el <usuario> está en idioma <idioma_actual>
    When selecciona <nuevo_idioma>
    Then la interfaz se actualiza dinámicamente

    Examples: Datos de entrada
      | usuario        | idioma_actual | nuevo_idioma |
      | Visitante01    | Español       | Inglés       |

    Examples: Datos de salida
      | resultado                |
      | Interfaz en inglés       |


  Scenario Outline: Persistencia del idioma
    Given que el <usuario> ya seleccionó <idioma>
    When recarga o navega
    Then el idioma se mantiene

    Examples: Datos de entrada
      | usuario        | idioma   |
      | Visitante01    | Inglés   |

    Examples: Datos de salida
      | resultado               |
      | Idioma persistente      |