*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
        [Documentation]     #working with native app
        Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=motoonrfusionplus
    ...     app=C:${/}Users${/}40032114${/}androids${/}khan-academy-7-3-2.apk
    Set Appium Timeout    30s
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc="Settings"]    30s
    Click Element       xpath=//android.widget.ImageView[@content-desc="Settings"]
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Sign in"]    30s
    Click Element    xpath=//android.widget.TextView[@text="Sign in"]
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Sign up with email"]   30s
    Click Element    xpath=//android.widget.Button[@content-desc="Sign up with email"]
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="First name"]     30s
    Input Text    xpath=//android.widget.EditText[@content-desc="First name"]    ken
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Last name"]     30s
    Input Text    xpath=//android.widget.EditText[@content-desc="Last name"]     leo
    Wait Until Page Contains Element    xpath=//android.view.ViewGroup[@content-desc="Birthday"]    30s
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Birthday"]
    
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]       
    Click Element    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]
    Clear Text    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]
    Input Text    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]    Dec
    
    Click Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]
    Clear Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]
    Input Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]     20
    Click Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]
    Clear Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]
    Input Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]     1999
    Click Element    xpath=//android.widget.Button[@text="OK"]
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Email address"]    30s
    Input Text    xpath=//android.widget.EditText[@content-desc="Email address"]    l@gmail.com
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Password"]   30s
    Input Text    xpath=//android.widget.EditText[@content-desc="Password"]    l@gmail.com
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="CREATE"]
    Click Element    xpath=//android.widget.TextView[@text="CREATE"]
    
    Sleep    5s
    [Teardown]      Close Application
TC2
        [Documentation]     #working with native app
        Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=motoonrfusionplus
    ...     app=C:${/}Users${/}40032114${/}androids${/}khan-academy-7-3-2.apk
    Set Appium Timeout    20s
    Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Search tab"]
    Click Element       xpath=//android.widget.Button[@content-desc="Search tab"]
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Arts and humanities"]
    Click Element       xpath=//android.widget.TextView[@text="Arts and humanities"]
    &{count}        Create Dictionary       strategy=-android uiautomator
    ...     selector=UiSelector().text("Art of Asia")
    Execute Script    mobile: scroll     &{count}
    
    Click Element    android=UiSelector().text("Art of Asia")
    Sleep    5s
    [Teardown]      Close Application
    













