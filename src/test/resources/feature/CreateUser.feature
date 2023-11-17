
Feature: User Login and Logout

  @Post_UserLogin_200_Positive
Scenario Outline: user login with valid endpoint and request body from excelsheet "<Sheetname>" and <RowNumber>
    Given user creates post request from  "<Sheetname>" and <RowNumber>
    When user send post request with valid requestbody and valid endpoint
    Then user receives "200" OK status with response body from <Rownumber> for user module

    Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         0 |
      
@Post_UserLogin_400_Negetive      
Scenario Outline: user login with valid endpoint  and missing mandatory fields request body from excelsheet "<Sheetname>" and <RowNumber>
		Given user creates post request for mandatory fields from  "<Sheetname>" and <RowNumber>
    When user send post request with missing mandatory fields and valid endpoint
    Then user receives "400" bad request with response body from  <RowNumber> for user module
 
    Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         1 |
      
@Post_UserLogin_400_Negetive      
Scenario Outline: user login with valid endpoint  and missing mandatory fields request body from excelsheet "<Sheetname>" and <RowNumber>
		Given user creates post request for mandatory fields from  "<Sheetname>" and <RowNumber>
    When user send post request with missing email body and valid endpoint
    Then user receives "400" bad request with response body from  <RowNumber> for user module
 
    Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         2| 
 
@Post_UserLogin_400_Negetive      
Scenario Outline: user login with valid endpoint  and missing mandatory fields request body from excelsheet "<Sheetname>" and <RowNumber>
		Given user creates post request for mandatory fields from  "<Sheetname>" and <RowNumber>
    When user send post request with missing password body  and valid endpoint
    Then user receives "400" bad request with response body from  <RowNumber> for user module
 
    Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         3 | 
 
 @Post_UserLogin_400_Negetive      
Scenario Outline: user login with invalid endpoint  and valid request body from excelsheet "<Sheetname>" and <RowNumber>
		Given user creates post request for mandatory fields from  "<Sheetname>" and <RowNumber>
    When user send post request with valid request body  and invalid endpoint
    Then user receives "400" bad request with response body from  <RowNumber> for user module
 
    Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         4 | 
 
 
@Get_UserLogout_200_Positive  
  Scenario: user logout with valid endpoint
  	Given user creates GET Request for valid baseurl and valid endpoint 
  	When user send get request with valid endpoint
  	Then user receives "200" OK status with reponse body
 	
@Get_UserLogout_400_Negetive  
  Scenario: user logout  with invalid endpoint
  	Given User creates GET Request for valid baseurl and invalid endpoint 
  	When user send get request with invalid endpoint
  	Then user receives "400" bad request status with  reponse body
 
   