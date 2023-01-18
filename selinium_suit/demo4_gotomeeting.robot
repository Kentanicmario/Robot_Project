*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***

TC1
    Open Browser   url=https://www.goto.com/meeting/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id:truste-consent-button
    Click Element   link=Try Free
    Input Text    name:FirstName    John
    Input Text    name:LastName     wick
    Input Text    name:Email    john@gmail.com
    Select From List By Label    name:CompanySize    250 - 499