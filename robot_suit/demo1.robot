*** Settings ***
Library  DateTime

*** Test Cases ***
TC1
    Log To Console  message=Kentanic Mario
    Log To Console  hello
TC2
    ${my_name}  Set Variable   Mario
    Log To Console   ${my_name}

TC4
    ${current_date}   Get Current Date
    Log To Console    ${current_date}

TC5
    ${radius}   Set Variable   10
    ${res}   Evaluate    ${radius} * ${radius} * 3.14
    Log To Console    ${res}
