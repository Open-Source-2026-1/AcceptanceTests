Feature: Configuración de disponibilidad del tutor

  Scenario Outline: Configurar horarios
    Given que el <tutor> está en "Mi Disponibilidad"
    When selecciona <horario> y guarda
    Then el sistema registra los bloques disponibles

    Examples: Datos de entrada
      | tutor     | horario                    |
      | Tutor01   | Mar-Jue 10AM-12PM         |

    Examples: Datos de salida
      | resultado              |
      | Horarios guardados     |


  Scenario Outline: Desactivar disponibilidad (Negativo)
    Given que el <tutor> cambia su estado
    When selecciona "No Disponible"
    Then su perfil se oculta de búsquedas

    Examples: Datos de entrada
      | tutor     |
      | Tutor01   |

    Examples: Datos de salida
      | estado_perfil   |
      | Oculto          |