*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
    [Documentation]     #working with website
    Open Browser   url=https://www.google.com       browser=chrome
    ${actual_title}    Get Title 
    Log To Console    ${actual_title}
    Log    ${actual_title}
    Should Be Equal    ${actual_title}    Google
    
TC2

    Open Browser  url=https://www.google.com   browser=chrome
    Title Should Be    Google

TC3
    Open Browser   url=https://www.facebook.com   browser=chrome
    Input Text    locator=id:email    text=hello@gmail.com
    Input Password    id:pass    wel123
    Click Element    name:login

TC4
    Open Browser   url=https://www.db4free.net/phpMyAdmin/   browser=chrome
    Input Text    locator=id:input_username    text=hello
    Input Password    input_password    wel123
    Click Element    input_go

