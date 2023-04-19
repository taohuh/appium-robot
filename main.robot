*** Settings ***
Library   AppiumLibrary

*** Test Cases ***
Open Test Application For android
    Open Test Application
    Close Popup When App Start
    Click Expansion Panels Menu
    Click Basic Submenu
    Cilck Input
    Click Female
    Click Save Button

    # Click Cards Menu
    # Click Search Icon On Topbar
    # Input Search Keyword Into Search Box    Icon
    # Click Bottom Navigation Icon Menu

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

Click Cards Menu
    Wait Until Page Contains Element    android=UiSelector().className("android.widget.TextView").text("Cards")    30s
    Click Element    android=UiSelector().className("android.widget.TextView").text("Cards")

Click Expansion Panels Menu
    Wait Until Page Contains Element    android=UiSelector().className("android.widget.TextView").text("Expansion Panels")    30s
    Click Element    android=UiSelector().className("android.widget.TextView").text("Expansion Panels")

Click Basic Submenu
    Wait Until Page Contains Element    android=UiSelector().className("android.widget.TextView").text("Basic")    30s
    Click Element    android=UiSelector().className("android.widget.TextView").text("Basic")

Cilck Input
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Input']]/android.widget.ImageButton    30s
    Click Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Input']]/android.widget.ImageButton

Click Female
    Wait Until Page Contains Element    android=UiSelector().className("android.widget.RadioButton").text("Female")    30s
    Click Element    android=UiSelector().className("android.widget.RadioButton").text("Female")

Click Save Button
    Wait Until Page Contains Element    android=UiSelector().className("android.widget.Button").text("SAVE")    30s
    Click Element    android=UiSelector().className("android.widget.Button").text("SAVE")

