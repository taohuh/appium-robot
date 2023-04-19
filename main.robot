*** Settings ***
Library   AppiumLibrary

*** Test Cases ***
Open Test Application For android
    Open Test Application
    Close Popup When App Start
    Click Search Icon On Topbar
    Input Search Keyword Into Search Box    Icon
    Click Bottom Navigation Icon Menu

*** Keywords ***
Open Test Application
    Open Application    remote_url=http://127.0.0.1:4723
    ...    deviceName=emulator-5554
    ...    automationName=uiautomator2
    ...    platformName=Android
    ...    appPackage=com.material.components
    ...    appActivity=com.material.components.activity.MainMenu

Close Popup When App Start
    Wait Until Page Contains Element    id=com.material.components:id/bt_close    30s
    Click Element    id=com.material.components:id/bt_close
    Wait Until Page Does Not Contain Element    id=com.material.components:id/bt_close    30s

Click Search Icon On Topbar
    Wait Until Page Contains Element    accessibility_id=Search    30s
    Click Element    accessibility_id=Search

Input Search Keyword Into Search Box
    [Arguments]    ${kw}
    Wait Until Page Contains Element    id=com.material.components:id/search_src_text    30s
    Input Text    id=com.material.components:id/search_src_text    ${kw}

Click Bottom Navigation Icon Menu
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]
    Click Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]