*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Open Browser And Check Title
    Open Browser    https://www.aliexpress.com/    chrome
    Wait Until Element Is Visible    xpath=//*[name()='path' and contains(@d,'M512 126.3')]    timeout=120s
    Sleep    2s
    Mouse Over    xpath=//*[name()='path' and contains(@d,'M512 126.3')]
    Click Button    xpath=//button[@class='my-account--signin--RiPQVPB']
    Sleep    2s
    Wait Until Element Is Visible    css=input.cosmos-input.cosmos-input-rtl    timeout=120s
    Input Text    css=input.cosmos-input.cosmos-input-rtl    basmalamohamed934@gmail.com
    Sleep    2s
    Click Element    xpath=//div[@class='_2F0EX']
    Click Button    xpath=//button[@type='button']
    Sleep    2s
    Wait Until Element Is Visible    xpath=//input[@id='fm-login-password']    timeout=120s
    Input Text    xpath=//input[@id='fm-login-password']    testing
    Click Button    xpath=//button[@aria-label='تسجيل الدخول']
    ***Slide to verify-only in the test enviroment***
    ***assertion***
    Sleep    60s
    Close Browser
