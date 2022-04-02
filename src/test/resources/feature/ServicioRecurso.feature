Feature: Pruebas al servicio resources

  Scenario: Listar todos los recursos
    Given listar recursos
    When mostrar el listado de recursos
    And validar codigo de respuestas "200"
    Then validar numero de recursos

  Scenario: Mostrar Recursos
    Given listar recurso con id "2"
    When mostrar informacion del recurso
    And validar codigo de respuestas "200"
    Then validar informacion de la recurso
      | nombre       | año  | color   | pantone |
      | fuchsia rose | 2001 | #C74375 | 10-2031 |

  Scenario: Recurso no encontrado
    Given listar recurso con id "20"
    And validar codigo de respuestas "404"