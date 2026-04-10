Feature: Verificación institucional del perfil

  Scenario Outline: Visualización de usuario verificado
    Given que el <usuario> ha confirmado su correo institucional
    When otro usuario visita su perfil
    Then se muestra el sello "Verificado" junto a su nombre

    Examples: Datos de entrada
      | usuario      |
      | TutorVerif   |

    Examples: Datos de salida
      | sello_mostrado |
      | Verificado     |


  Scenario Outline: Usuario no verificado intenta publicar (Negativo)
    Given que el <usuario> no ha verificado su correo
    When intenta publicar su disponibilidad
    Then el sistema deniega la acción
      And muestra "Debe verificar su cuenta institucional primero"

    Examples: Datos de entrada
      | usuario        |
      | TutorNoVerif   |

    Examples: Datos de salida
      | mensaje_pantalla                                      |
      | Debe verificar su cuenta institucional primero         |