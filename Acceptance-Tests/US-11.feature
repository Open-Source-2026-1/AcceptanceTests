Feature: Compartir archivos en el chat

  Scenario Outline: Enviar archivo PDF
    Given que el <usuario> está en el chat
    When adjunta un archivo <archivo> de tipo <tipo>
    Then el otro usuario puede descargarlo

    Examples: Datos de entrada
      | usuario        | archivo            | tipo |
      | Estudiante01   | ejercicios.pdf     | PDF  |

    Examples: Datos de salida
      | resultado                 |
      | Archivo disponible        |