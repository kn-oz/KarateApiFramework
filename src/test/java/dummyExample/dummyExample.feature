"""
/*
C29_Get_DeSerialization
http://dummy.restapiexample.com/api/v1/employee/3 url’ine bir GET request
gonderdigimizde donen response’un status code’unun 200, content Type’inin application/json
ve body’sinin asagidaki gibi oldugunu test edin.
Response Body
{
"status": "success",
"data": {
"id": 3,
"employee_name": "Ashton Cox",
"employee_salary": 86000,
"employee_age": 66,
"profile_image": ""
},
"message": "Successfully! Record has been fetched."

"""

  Feature: DummyExampleTest

    Scenario: TC01 Get request test

      Given url "http://dummy.restapiexample.com/api/v1/employee/3"
      When method GET
      Then status 200
      And match header Content-Type == "application/json"
      And match response == read("responseBody.json")
