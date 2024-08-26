Feature: Consultar una mascota por estatus

  Scenario: Consultar mascotas con estatus "sold"
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    And param status = 'sold'
    When method GET
    Then status 200
    And match each response[*].status == 'sold'
