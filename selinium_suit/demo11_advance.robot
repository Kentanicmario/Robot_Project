*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']       C:${/}Users${/}40032114${/}Downloads${/}PDF to WORD _ Convert PDF to Word online for free.pdf
    Sleep   5s
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    leon
    Input Password    css=#pass    pass123
    Click Element    css=button[name='login']

TC3
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://phptravels.net/
    Click Element    xpath=//span[@class='select2-selection__rendered']
    Input Text    xpath=//input[@class='select2-search__field']        vadodara
    Click Element    xpath=//li[@class='select2-results__option select2-results__option--highlighted']
    Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
    Execute Javascript  document.querySelector('#checkout').value='02-11-2023'
    Sleep    5s
TC4
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://redbus.in
