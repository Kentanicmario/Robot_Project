*** Settings ***
Library    Collections
*** Variables ***
${BROWSER_NAME}     chrome
${MOBILE}   9089786756
@{COLORS}   red    green   yellow
*** Test Cases ***
TC1
    ${my_name}  Set Variable    mario
    Log To Console    ${my_name}
    Log To Console    ${BROWSER_NAME}
TC2
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${MOBILE}
    Log To Console    ${COLORS}
TC3
    Log To Console    ${COLORS}[2]
    Log To Console    ${COLORS}
TC4
    ${item_count}   Get Length    ${COLORS}
    Log To Console    ${item_count}
TC5
    @{fruits}   Create List     apple       orange      melon
    Log To Console    ${fruits}
    #
    Append To List  ${fruits}     berry
    Log To Console    ${fruits}
    #
    ${a}    Remove From List    ${fruits}   1
    Log To Console    ${fruits}
    #
    Insert Into List    ${fruits}    1    pineapple
    Log To Console    ${fruits}
    #
    Get Length    ${fruits}
    Log To Console    ${fruits}

    #
    Log To Console    ${fruits}

TC7
    @{fruit}    Create List     apple    orange  melon   mango
    FOR    ${element}    IN    @{fruit}
        Log To Console    ${element}

    END
TC8
    &{emp}      Create Dictionary     empo=101         empn=len
    Log To Console    ${emp}[empo]


    
    
    