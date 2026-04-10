Feature: Subida de archivos al chat

  Scenario Outline: Subida exitosa de archivo
    Given un archivo <archivo> de tamaño <tamano>
    When se sube a la nube
    Then el backend retorna la URL segura

    Examples: Datos de entrada
      | archivo         | tamano |
      | ejercicios.pdf  | 2MB    |

    Examples: Datos de salida
      | codigo | resultado         |
      | 200    | URL generada      |


  Scenario Outline: Archivo excede tamaño (Negativo)
    Given un archivo de tamaño <tamano>
    When el sistema valida el límite
    Then retorna HTTP 413

    Examples: Datos de entrada
      | tamano |
      | 15MB   |

    Examples: Datos de salida
      | codigo | mensaje_error        |
      | 413    | Payload Too Large    |