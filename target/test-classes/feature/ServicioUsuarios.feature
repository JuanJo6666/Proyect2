Feature: Pruebas al servicio usuarios

  Scenario: Listar todos los usuarios
    Given listar usuarios
    When mostrar el listado de usuarios
    And validar codigo de respuesta "200"
    Then validar numero de registros

  Scenario: Mostrar Usuario
    Given listar usuario con id "3"
    When mostrar informacion del usuario
    And validar codigo de respuesta "200"
    Then validar informacion de la consulta
      | email               | nombre | apellido |
      | emma.wong@reqres.in | Emma   | Wong     |

    Scenario: Usuario no registrado
      Given listar usuario con id "50"
      Then validar codigo de respuesta "404"