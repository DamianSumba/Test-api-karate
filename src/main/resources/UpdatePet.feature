Feature: Actualizar el nombre y el estatus de una mascota

  Scenario: Actualizar el nombre y el estatus de la mascota a “sold”
    Given url 'https://petstore.swagger.io/v2/pet'
    And request read('updatePet.json')
    When method PUT
    Then status 200
    And match response.name == 'panchito'
    And match response.status == 'sold'