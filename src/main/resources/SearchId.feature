Feature: Consultar una mascota por ID

  Scenario: Consultar una mascota ingresada previamente
    Given url 'https://petstore.swagger.io/v2/pet/1'
    And header accept = 'application/json'
    When method GET
    Then status 200
    And match response == read('addPet.json')

