*** Settings ***
Library   OperatingSystem
*** Test Cases ***
TC1
    Create Directory    path=A:\\ken\\demo123
TC2
    Log To Console    A:\\ken\\demo123
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR} 
    Log To Console    ${EXECDIR}
    Log To Console    C:${/}ken${/}demo123
    Log To Console    ken${SPACE}${SPACE}mario
    Log To Console    ${TEST_NAME}