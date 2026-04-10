Feature: Compartir pantalla en videollamada

  Scenario Outline: Compartir pantalla activa
    Given que el <usuario> está en una videollamada
    When presiona "Compartir Pantalla"
    Then el otro usuario visualiza su pantalla

    Examples: Datos de entrada
      | usuario      |
      | Tutor01      |

    Examples: Datos de salida
      | resultado                     |
      | Pantalla visible al receptor  |