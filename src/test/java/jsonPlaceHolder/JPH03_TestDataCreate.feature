Feature: JPH03 TestData creation

  Background: Test datalarını tanımlamal

    * def baseUrl = "https://jsonplaceholder.typicode.com"
    * def pathParams = "/posts/70"
    * def requestBody =
    """
    {
      "title": "Ahmet",
      "body": "Merhaba",
      "userId": 10,
      "id": 70
    }
    """
    * def expectedResponse =
    """
    {
      "title": "Ahmet",
      "body": "Merhaba",
      "userId": 10,
      "id": 70
    }
    """

  Scenario: User creates testdata before the test with background

    Given url baseUrl
    And path pathParams
    And request requestBody
    When method PUT
    Then status 200
    And match header Content-Type == "application/json; charset=utf-8"
    And match header Connection == "keep-alive"
    And match response == expectedResponse

