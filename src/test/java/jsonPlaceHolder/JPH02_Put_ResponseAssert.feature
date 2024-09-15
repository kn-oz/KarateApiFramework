Feature: JPH Put request

  Scenario:  TC02 Put request response assertion

    Given url "https://jsonplaceholder.typicode.com"
    And path "/posts/70"
    And request
                """
                {"title": "Ahmet",
                "body": "Merhaba",
                "userId": 10,
                "id": 70}
                """
    When method PUT
    Then status 200
    And match header Content-Type == "application/json; charset=utf-8"
    And match header Connection == "keep-alive"
    And assert response.title == "Ahmet"
    And assert response.body == "Merhaba"
    And assert response.userId == 10
    And assert response.id == 70

