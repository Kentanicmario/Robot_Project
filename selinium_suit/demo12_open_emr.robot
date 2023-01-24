*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   url=http://demo.openemr.io/b/openemr/       browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Input Text    locator=id:authUser    text=admin
    Input Password    id:clearPass    pass
    Click Element    xpath=//select[@name='languageChoice']
    Select From List By Label    xpath=//select[@name='languageChoice']     English (Indian)
    Click Element    xpath=//button[@id='login-button']
    Mouse Over    xpath=//div[text()='Patient']
    Click Element    xpath=//div[text()='New/Search']
    Select Frame    xpath=//iframe[@src='/b/openemr/interface/new/new.php']
    Click Element    xpath=//input[@id='form_fname']
    Input Text    id:form_fname    ken
    Click Element    xpath=//input[@id='form_lname']
    Input Text    id:form_lname    leo
    Click Element    xpath=//input[@id='form_DOB']
    Input Text    id:form_DOB    24/01/2023
    Select From List By Label    name:form_sex      Male
    Click Element    xpath=//button[@id='create']
    Unselect Frame
    Select Frame    xpath=//iframe[@id='modalframe']
    Click Element    xpath=//input[@value='Confirm Create New Patient']
    ${alert_text}   Handle Alert    action=ACCEPT      timeout=30s
    Log To Console    ${alert_text}
    Click Element    xpath=//div[@class='closeDlgIframe']
    Should Contain    xpath=//*[contains(text(),'ken leo')]     ken leo