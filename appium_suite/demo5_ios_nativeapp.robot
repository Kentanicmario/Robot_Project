*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    &{dic}      Create Dictionary       buildName=khan
    ...     projectName=khan project
    ...     userName=kentanicleon_A5hO8u
    ...     accessKey=2wJGDSeGL1pkpkjipB9i
    
    
    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11 Pro
    ...     app=bs://2688d4fc593722023eef4b07a8d164af137514cf
    ...     platformVersion=13
    ...     bstack:options=${dic}
    Set Appium Timeout    20s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Username"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Username"]    standard_user
    Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]
    Input Text    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]    secret_sauce

    Click Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]
    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]/XCUIElementTypeOther
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-First Name"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    john
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    jo
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    100022
    Hide Keyboard   key_name=Done
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
    Should Contain   xpath=//XCUIElementTypeStaticText[@label='Payment Information']   Payment Information



    [Teardown]      Close Application

TC2 Open APP
    Open Application    remote_url=
    