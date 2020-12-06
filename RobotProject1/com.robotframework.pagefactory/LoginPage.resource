*** Settings ***
Library      SeleniumLibrary
Resource     ../com.robotframework.utlities/Constants.resource
Resource    ../com.robotframework.testdata/LogInTestData.resource


*** Variables ***

${Username_txtbox}                 id=txtUsername 
${Password_txtbox}                 id=txtPassword 
${Login_btn}                       id=btnLogin 
${Invalid_Credentials_prompt}       xpath=//span[contains(text(),'Invalid credentials')]


*** Keywords ***
Enter Valid Username 
    Input Text                  ${Username_txtbox}                               ${VALID_USERNAME}
Enter Valid Password    
    Input Text                  ${Password_txtbox}                               ${VALID_PASSWORD}
Click Login Button    
    Click Button                ${Login_btn} 
    
Enter Invalid Username 
    Input Text                  ${Username_txtbox}                               ${INVALID_USERNAME}
Enter Invalid Password    
    Input Text                  ${Password_txtbox}                               ${INVALID_PASSWORD}
    
Verify Invalid Credentials is visible
    Element Should Be Visible   ${Invalid_Credentials_prompt} 
    Capture Page Screenshot       