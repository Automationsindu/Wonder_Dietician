Feature: Morbidity_Controller

@Get_AllMorbidities_200_Positive
  Scenario: To verify that user is able to retrieve a record with valid endpoint 
    Given User is provided with the Base Url and valid endpoint
    When User send the get request
    Then User receives "200" OK Status and response body  
    
@Get_AllMorbidities_400_Negetive  
Scenario: To verify that user is able to retrieve a record with invalid endpoint 
    Given User is provided with the Base Url and invalid endpoint
    When User send the get request
    Then User receives "400" bad request Status and response body 
    
    
@Get_MorbiditiesByTestName_200_Positive
  Scenario: To verify that user is able to retrieve a record with valid endpoint 
    Given User is provided with the valid endpoint and a valid file name
    When User send the get request
    Then User receives "200" OK Status and response body  
 
 @Get_MorbiditiesByTestName_400_Negetive
  Scenario: To verify that user is able to retrieve a record with invalid endpoint 
    Given User is provided with the invalid endpoint and a valid file name
    When User send the get request
    Then User receives "400" bad request Status and response body  
  
  @Get_MorbiditiesByTestName_404_Negetive
  Scenario: To verify that user is able to retrieve a record with valid endpoint and invalid file name
    Given User is provided with the valid endpoint and  invalid file name
    When User send the get request
    Then User receives "404" not found request Status and response body  
  
 @Get_MorbiditiesByTestName_404_Negetive
  Scenario: To verify that user is able to retrieve a record with valid endpoint and missing file name
    Given User is provided with the valid endpoint and missing file name
    When User send the get request
    Then User receives "404" not found request Status and response body  
                                                      