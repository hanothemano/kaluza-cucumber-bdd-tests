Feature: GET Estimated Age Using Via Agify API

# Agify Endpoint BDD Scenarios

  Scenario: Retrieves the estimated age of a single user
    Given the API endpoint is "https://api.agify.io?name=michael"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    And each user should have a "age" age

  Scenario: Retrieves the estimated age of a single user from a specific country
    Given the API endpoint is "https://api.agify.io?name=billybob&country_id=US"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    And each user should have a "country" country

  Scenario: Retrieves an the estimated age of an array list of users
    Given the API endpoint is "https://api.agify.io?name[]=michael&name[]=matthew&name[]=jane"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    And the response array should contain at least 2 users

  Scenario: Retrieves an the estimated age of an array list of users with the country AU
    Given the API endpoint is "https://api.agify.io?name[]=michael&country_id=AU&name[]=matthew&country_id=AU"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    # And both users should have a "country" country AU

   Scenario: Retrieves the estimated age of a single user with name containing special character
    Given the API endpoint is "https://api.agify.io?name=Dāwiḏ"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    # And the user should contain the unique character ā in their name

    Scenario: Retrieves the estimated age of a single user with a very very long name
    Given the API endpoint is "https://api.agify.io?name=Wolfeschlegelsteinhausenbergerdorff"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    # Note: this scenario doesn't work as intended because the long name is not in the database
    # but it would be good to have a test for this edge case aswell

    Scenario: Retrieves the estimated age of a single user with name not in the database
    Given the API endpoint is "https://api.agify.io?name=thisnameisnotvalid"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    # And each user should have "age" of null - test assertion (because its not in database

    Scenario: Retrieves the estimated age of a single user with both firsname and surname included
    Given the API endpoint is "https://api.agify.io?name=Firstname Surname"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    # And each user should have "firstname / lastname field"
    # Note: again this is not a valid scenario but I wanted to see what would happen if the endpoint was given lastname / with extra space characters
    # currently the endpoint handles this by just using firstname as the paramater and it ignores the space / lastname

    Scenario: Tries to do a get name + estimate age request without having the name field in request
    Given the API endpoint is "https://api.agify.io?"
    When a GET request is sent to the endpoint
    Then the response status code should be 422


  # Genderize Endpoint BDD Scenarios - this should be moved to another feature file

    Scenario: Tries to do a get name + estimate the users gender
    Given the API endpoint is "https://api.genderize.io?name=peter"
    When a GET request is sent to the endpoint
    Then the response status code should be 200
    And each user should have a "gender" gender

    Scenario: Tries to do a get name + estimate gender request without having the name field in request
    Given the API endpoint is "https://api.genderize.io?"
    When a GET request is sent to the endpoint
    Then the response status code should be 422



    # TC10 - 422 Unprocessable Content { "error": "Missing 'name' parameter" } 
    # - FINAL ONE!!! can do this scenario for both agify and genderize - DONE


  

    ### TODO Other BDD Cucumber Test Scenarios

    ### We should have the potential to run these BDD scenarios as well
    ### (but we don't have an expired api key to run some of these) and some I haven't quite figured out the logic for

    # TC11 - 402 Payment Required { "error": "Subscription is not active" } - unable to do this test currently
    # TC12 - 422 Unprocessable Content { "error": "Invalid 'name' parameter" } - unsure how to trigger this response via postman
    # TC13 - 429 Too many requests { "error": "Request limit reached" } - don't want to do this one as then I won't be able to run my other tests without an api key :)
    # TC14 - 429 Too many requests { "error": "Request limit too low to process request" } - not exactly sure how to trigger this particular api response


    # I just realised this a bit later on that there are actually 2 separate agify endpoints :facepalm:
    # https://api.agify.io?name=michael
    # https://api.genderize.io?name=ashley


    # https://api.agify.io? = {"error": "Missing 'name' parameter"}
    # https://api.genderize.io? = {"error": "Missing 'name' parameter"}


    # the best thing would be to actually split up the cucumber feature tests into other files 
    # (as each endpoint it does some different functionality)
    # I ran out of time to complete this step so all the tests are in 1 feature file