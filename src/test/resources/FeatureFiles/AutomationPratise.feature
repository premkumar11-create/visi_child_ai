Feature: Verify Automation Exercise applicatin smoke test case

@Getproducts
Scenario: Verify Get All Products List is working as expected
When User add headers key "Content/type" and value "application/json"
And User add method type "GET" and pass endpoint "api/productsList"
Then User verify status code is 200
And User verify json path key "responseCode" is matching with expected value "200"
And User verify json path key "products[0].name" is matching with expected value "Blue Top"
And User save the response to "automationexercise" file
And User verify the json property "products[0].name" to "Blue Top" in the response
And User verify json schema file "responseSchema" is matching with response



@CreateUser
Scenario: Verify Create User for Reqres Application
When User add headers key "content-type" and value "application/json"
#And User add request body as string:
#"""
#{
#    "name": "morpheus",
#    "job": "leader"
#}
#"""

And User set json property "name" to "morpheus" in the file "user"
And User add method type "POST" and pass endpoint "api/users"
#And User add request body as json file 'user'
Then User verify status code is 201
And User verify json path key "job" is matching with expected value "leader"
And User verify json schema file "createUserSchema" is matching with response


@GetUser
Scenario: Verify Get User for Reqres Application
When User add headers key "content-type" and value "application/json"
And User add query params key "page" and value "2"
And User add method type "GET" and pass endpoint "api/users"
Then User verify status code is 200
And User verify json path key "page" is matching with expected value "2"
And User verify json path key "data[0].id" is matching with expected value "7"
And User verify json path "data[0].email" is matching with expected value "michael.lawson@reqres.in" using filter key "data[0].id" and value "7"
And User verify json path "data[0].id" is matching with expected value "7" using filter key "data[0].email" and value "michael.lawson@reqres.in"
