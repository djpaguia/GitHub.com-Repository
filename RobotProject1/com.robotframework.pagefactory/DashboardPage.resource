*** Settings ***
Library    SeleniumLibrary
Resource   ../com.robotframework.utlities/Constants.resource
*** Variables ***

${Dashboard_header}    xpath=//h1[contains(text(),'Dashboard')]

*** Keywords ***

Verify Dashboard Header is visible
    Element Should Be Visible     ${Dashboard_header}
    Capture Page Screenshot       