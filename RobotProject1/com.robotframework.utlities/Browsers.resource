*** Settings ***
Library     SeleniumLibrary
Resource    Constants.resource

*** Keywords ***
Open Chrome
    Open Browser    None    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Set Selenium Timeout    20   
    
Open FireFox
    Open Browser    None    ff
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Set Selenium Timeout    20  

Open Safari
    Open Browser    None    safari
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Set Selenium Timeout    20  
    
Open Headless Chrome
    Open Browser    None    headlesschrome
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Set Selenium Timeout    20  
    
Open Headless Firefox
    Open Browser    None    headlessfirefox
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Set Selenium Timeout    20  
    
Open Internet Explorer
    Open Browser    None    ie
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Set Selenium Timeout    20  
    
Open Edge
    Open Browser    None    edge
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Set Selenium Timeout    20  
    
Open Opera
    Open Browser    None    opera
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Set Selenium Timeout    20  