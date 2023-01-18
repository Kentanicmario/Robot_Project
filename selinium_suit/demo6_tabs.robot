*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***

TC1
    Open Browser   browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window   phpMyAdmin
    Input Text    name:pma_username    John
    Input Password    name:pma_password    ken123
    Click Element    xpath=//input[@class='btn btn-primary']

