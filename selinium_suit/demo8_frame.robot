*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text  name:fldLoginUserId    text123
    Click Element    xpath=//a[@class='btn btn-primary login-btn']
    Unselect Frame
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://redbus.in
    Click Element    xpath=//div[@id='sign-in-icon-down']
    Click Element    xpath=//li[@id='signInLink']
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    id:mobileNoInp    9897969059
    Element Should Contain    xpath=//span[contains(text(),'valid mobile')]    Please enter valid mobile number
