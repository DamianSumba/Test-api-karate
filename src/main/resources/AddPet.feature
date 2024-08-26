Feature: Añadir una mascota a la tienda

  Scenario: Ingreso Exitoso
    Given url 'https://petstore.swagger.io/v2/pet'
    And request read('addPet.json')
    When method POST
    Then status 200
    And match response.category == read('addPet.json').category
    And match response.name == read('addPet.json').name
    And print response.name
    And match response.photoUrls == read('addPet.json').photoUrls
    And match response.tags == read('addPet.json').tags
    And match response.status == read('addPet.json').status

  Scenario:  Error de Ingreso
    Given url 'https://petstore.swagger.io/v2/pet'
    And request read('addPet.json')
    When method get
    Then status 405