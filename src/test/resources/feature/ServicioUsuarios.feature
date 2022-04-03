@todoslosservicios
Feature: Pruebas al servicio usuarios
@metodoget @regresion
  Scenario: Listar todos los usuarios
    Given listar usuarios
    When mostrar el listado de usuarios
    And validar codigo de respuesta "200"
    Then validar numero de registros
  @metodoget
  Scenario: Mostrar Usuario
    Given listar usuario con id "3"
    When mostrar informacion del usuario
    And validar codigo de respuesta "200"
    Then validar informacion de la consulta
      | email               | nombre | apellido |
      | emma.wong@reqres.in | Emma   | Wong     |
  @metodoget
  Scenario: Usuario no registrado
    Given listar usuario con id "50"
    Then validar codigo de respuesta "404"

  @metodopost @regresion

  Scenario : Crear usuario
    Given que no exite usuario registrado
    When registrar datos del usuario
      | nombre    | puesto | codigo |
      | Alexander | QA     | 201    |
      | Jose      | QA     | 201    |
      | Pedro     | QA     | 21     |
    Then validar codigo de respuesta "201"
    And mostrar los datos del registro
  @metodoput @regresion
  Scenario : Actualizar usuario
    Given que el usuario este registrado
    When actualizar datos del usuario
      | id | nombre    | pueto | codigo |
      |  2 | Alexander | QA    | 200    |
    Then validar codigo de respuesta "200"
    And mostrar los datos del registro


