*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***

TC1 Register
    [Documentation]     #working with facebook app
    Open Browser    url=https://www.facebook.com   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name:firstname    ken
    Input Text    name:lastname    leo
    Input Text    name:reg_email__    ken@gmail.com
    Input Text    name:reg_email_confirmation__    ken@gmail.com
    Input Password    id:password_step_input    ken123
    Select From List By Index    id=day     3
    Select From List By Label    id=month   Apr
    Select From List By Label    id=year    2000
    Click Element   xpath=//input[@value='2']
    Click Element    name:websubmit
    