@TESTSAPI
Feature: Tests api
Background:
  Given print Launching the test

   @get
  Scenario: test GET
    Given url urlServeur
     And path '/posts/1'
    And method GET
    Then  status 200
    And print  response
  @post
  Scenario: test POST
    Given url "https://jsonplaceholder.typicode.com/posts"
    And request {title: 'marie',body: 'bar',userId: 1}
    When  method POST
    Then  status 201
    And print  response
  @put
  Scenario: test PUT ()
    Given url urlServeur
    And path '/posts/1'
    And request { id: 1, title: 'christine',body: 'perfume',userId: 1}
    When  method PUT
    Then  status 200
    And print  response

  @delete
  Scenario: test DELETE (deleting a resources)
    Given url urlServeur
    And path '/posts/20'
    When  method DELETE
    Then print  'la reponse est:' , response

    @exercise
    Scenario: test GET
      Given url "https://reqres.in/api/users?page=1"
      When method GET
      Then  print  'la reponse est:' , response
      And match response.data[0].email == "george.bluth@reqres.in"

