Feature: Configuración de perfil de tutor

  Scenario Outline: Agregar habilidad al perfil
    Given que el <usuario> está en "Mi Perfil"
    When agrega la <habilidad> y guarda los cambios
    Then su perfil se actualiza correctamente
      And aparece en búsquedas relacionadas

    Examples: Datos de entrada
      | usuario      | habilidad           |
      | Tutor001     | Programación Web    |

    Examples: Datos de salida
      | mensaje_pantalla         |
      | Perfil actualizado       |


  Scenario Outline: Eliminar habilidad del perfil
    Given que el <usuario> tiene la habilidad <habilidad>
    When elimina la habilidad seleccionada
    Then la habilidad desaparece de su perfil

    Examples: Datos de entrada
      | usuario      | habilidad   |
      | Tutor002     | Cálculo I   |

    Examples: Datos de salida
      | mensaje_pantalla         |
      | Habilidad eliminada      |