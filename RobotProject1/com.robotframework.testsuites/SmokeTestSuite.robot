*** Settings ***
Library    SeleniumLibrary


      
Suite Setup        Log    I am inside the Test Suite Setup.  
Suite Teardown     Log    I am inside the Test Suite Teardown.  
Test Setup         Log    I am inside Test Setup.
Test Teardown      Log    I am inside Test Teardown.

Default Tags    sanity  
     
       
*** Test Cases ***
MyFirstTest
    [Tags]          smoke  
    Log             Hello World...   
    
MySecondTest
    [Tags]          example
    Log             I am inside 2nd test.
    Set Tags        regression1 
    Remove Tags     regression1
    
    
MyThirdTest
    Log             I am inside 3rd test.  
    
MyFourthTest
    Log             I am inside 4th test.  
    
MyFifthTest
    Log             I am inside 5th test. 
    



FirstSeleniumTest
    Open Browser                 https://www.google.com                        headlesschrome
    Maximize Browser Window
    Delete All Cookies
    Set Browser Implicit Wait    5
    Input Text                   name=q                                        Robot Framework
    Sleep                        2     
    Press Keys                   name=q                                        ENTER
    Sleep                        2    
    Close Browser
    Log                          DJ Test Completed - TEST PASSED   
    
SampleLoginTest
    [Documentation]              This is a sample login test.
    Open Browser                 ${URL}                                        chrome
    Set Browser Implicit Wait    5
    Sleep                        2
    LoginKW    
    LogoutKW
    Close Browser
    Log                          DJ Test Completed - TEST 
     
    
*** Variables ***
${URL}                           https://opensource-demo.orangehrmlive.com/
${USERNAME}                      Admin    
${PASSWORD}                      admin123
# @{CREDENTIALS}                 Admin                 admin123              // List Variable is deprecated in RF 3.2
# &{LOGINDATA}                   username=Admin        password=admin123     // Dictionary Variable is deprecated in RF 3.2

*** Keywords ***
LoginKW
    Input Text                   id=txtUsername                                ${USERNAME}
    Input Text                   id=txtPassword                                ${PASSWORD} 
    Click Button                 id=btnLogin   
    
LogoutKW
    Click Element                id=welcome 
    Click Element                link=Logout
    