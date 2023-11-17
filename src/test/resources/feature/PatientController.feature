Feature: PatientController Module


@Post_CreateNewPatient_201_Positive
Scenario Outline: Create new patient from valid endpoint and  valid requestbody from excelsheet "<Sheetname>" and <Rownumber>
Given User creates newpatient Post request from "<Sheetname>" and <Rownumber>
When  User sends HTTPS request with valid request body and valid endpoint
Then User  receives "201" created status with response body from <Rownumber>
 Examples:
      |Sheetname | Rownumber |
      |Sheet1    | 0         |   
                  
@Post_CreateNewPatient_400_Negetive
	Scenario Outline: Create new patient with valid endpoint and with existing patientId in request body from excelsheet "<Sheetname>" and <RowNumber>
		Given user creates new patient post request for mandatory fields from  "<Sheetname>" and <RowNumber>
    When user send post request with existing patientId requestbody and valid endpoint
    Then user  receives "400" with response body <RowNumber>
    Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         0 |
      | Sheet1    |         1 |
          

@Get_AllPatients_200_Positive
  Scenario: To verify that user is able to retrieve a record with valid endpoint 
    Given User is provided with the Base Url and valid endpoint
    When User send the get request
    Then User receives "200" OK Status and response body  
    
 
@Get_AllPatients_400_Negetive
  Scenario: To verify that user is able to retrieve a record with invalid endpoint
    Given User is provided with the Base Url and invalid endpoint
    When User send the get request
    Then User receives "400" OK Status and response body  
    
@Get_PatientMorbidityDetails_200_Positive
Scenario: To verify that user is able to retrieve patient morbidity details with valid patientId
Given User is provided with valid endpoint and valid patientId
When User sends get request 
Then User receives "200" Ok status    
    
@Get_PatientsMorbidityDetails_400_Negetive
  Scenario: To verify that user is able to retrieve a record with invalid endpoint
    Given User is provided with  invalid endpoint and a valid patientid
    When User send the get request
    Then User receives "400" bad request Status and response body 

@Get_PatientsMorbidityDetails_404_Negetive
  Scenario: To verify that user is able to retrieve a record with valid endpoint
    Given User is provided with valid endpoint and  invalid patientid
    When User send the get request
    Then User receives "404" not found Status and response body 


@Get_RetrievePatientFileByField_200_Positive
Scenario: To verify that user is able to retrieve patient morbidity details with valid endpoint
Given User is provided with valid endpoint and valid fileId
When User sends get request 
Then User receives "200" Ok status  

@Get_RetrievePatientFileByField_400_Negetive
  Scenario: To verify that user is able to retrieve a record with invalid endpoint
    Given User is provided with  invalid endpoint and a valid fileid
    When User send the get request
    Then User receives "400" bad request Status and response body 

@Get_RetrievePatientFileByField_404_Negetive
  Scenario: To verify that user is able to retrieve a record with valid endpoint
    Given User is provided with  valid endpoint and  invalid fileid
    When User send the get request
    Then User receives "404" not found request Status and response body 


@Put_updatePatientbyUserid_200_Positive
    Scenario Outline: To verify that user is able to update a record with valid patient id and mandatory request body
     Given user update patient for given patientId with mandatory fields from  "<Sheetname>" and <RowNumber>
  When user send put request to update given patientId
  Then user receives "200" status with valid response body from <RowNumber>
     Examples: 
      | Sheetname | RowNumber |
      | Sheet2    |         0 |     
 

@Put_updatePatientbyUserid_404_Negetive
     Scenario: To verify that user is able to update a record with invalid patientid and mandatory request body
    Given User creates  Put Request with invalid patientId with mandatory request body
  	When user send Put request with invalid patientId
  	Then user  receives "404" not found status 
  	
@Put_updatePatientbyUserid_400_Negetive
 Scenario Outline: To verify that user is able to update a record with valid patient id and missing mandatory request body
  Given User updates patient for valid patientId with missing mandatory fields from  "<Sheetname>" and <RowNumber>
  When user send put request to validate mandatory fields for given patientId
  Then user receives "400" bad request status from <RowNumber>
     Examples: 
      | Sheetname | RowNumber |
      | Sheet3   |         0 | 
      | Sheet3    |         1 | 
      | Sheet3    |         2 | 
      | Sheet3    |         3 | 
      | Sheet3    |         4 | 
      | Sheet3    |         5 | 
      | Sheet3    |         6 | 
      | Sheet3    |         7 |
      | Sheet3    |         8 |  
      | Sheet3    |         9 |    
 
@Delete_PatientbyUserid_200_Positive
  Scenario: To verify that user is able to delete a record with valid patientid 
     Given User is provided with the Base Url and endpoint and valid patientId
    When User send the delete request for deleting patient
    Then User receives "200" OK Status and response body
 
@Delete_PatientbyUserid_404_Negetive
  Scenario: To verify that user is able to delete a record with valid Dietician API endpoint and invalid patientid 
    Given User creates delete request for the valid Dietician API endpoint and invalid patient id
    When User sends delete request for deleting patient with invalid patientId
    Then User receives "404" not found status

@Delete_PatientbyUserid_400_Negetive
  Scenario: To verify that user is able to delete a record with missing patientid 
     Given User is provided with the Base Url and valid endpoint and missing patientId
    When User send the delete request for deleting patient
    Then User receives "400" bad request Status and response body    	  
              