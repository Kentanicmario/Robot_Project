*** Settings ***
Library    Collections
*** Variables ***
${BROWSER_NAME}     chrome
${MOBILE}   9089786756
@{COLORS}   red    green   yellow
*** Test Cases ***

TC1
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

TC2
    @{fruit}    Create List     apple    orange  melon   mango
    FOR    ${element}    IN    @{fruit}
        Log To Console    ${element}

    END
TC3
    &{emp}      Create Dictionary     empo=101         empn=len
    Log To Console    ${emp}[empo]