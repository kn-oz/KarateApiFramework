Feature: Kullanici Get request sonucu dönen response test eder

  Scenario: TC01 Get response assertion

    Given url "https://jsonplaceholder.typicode.com/posts/44"
    When method GET
    Then status 200
    And match header Content-Type == "application/json; charset=utf-8"
    Then match response.userId == 5

