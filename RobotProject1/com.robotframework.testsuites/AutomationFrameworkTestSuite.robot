*** Settings ***
Library    SeleniumLibrary  timeout=20    implicit_wait=10     
Resource    ../com.robotframework.utlities/Browsers.resource
Resource    ../com.robotframework.utlities/Constants.resource
Resource    ../com.robotframework.pagefactory/LoginPage.resource
Resource    ../com.robotframework.pagefactory/DashboardPage.resource



Test Teardown   Close All Browsers    
 

*** Test Cases ***
Test Case - Verify Login functionality using valid credentials
    [Documentation]    This is a sample login test.
    Open Chrome
    Go To               ${URL}
    Enter Valid Username     
    Enter Valid Password
    Click Login Button
    Verify Dashboard Header is visible
    
Test Case - Verify Login functionality using invalid credentials
    [Documentation]    This is a sample login test.
    Open Chrome
    Go To               ${URL}
    Enter Invalid Username   
    Enter Invalid Password
    Click Login Button
    Verify Invalid Credentials is visible
    