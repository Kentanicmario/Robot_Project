*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***

TC1
    Open Browser   url=https://www.salesforce.com/in/form/signup/freetrial-sales/    browser=chrome
    Input Text    name:UserFirstName    ken
    Input Text    name:UserLastName     leo
    Input Text    name:UserEmail    ken@gmail.com
    Select From List By Label    name:UserTitle     Customer Service Manager
    Input Text    name:CompanyName     ABC
    Select From List By Label    name:CompanyEmployees    101 - 500 employees
    Click Element      xpath=//div[@class='checkbox-ui']
    Click Element     start my free trial
    Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number

