*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Login Page
    Open Browser    https://opensource-demo.orangehrmlive.com    firefox
    Maximize Browser Window

    Wait Until Element Is Visible    name=username    10s
    Input Text    name=username    Admin

    Wait Until Element Is Visible    name=password    10s
    Input Text    name=password    admin123

    Click Button    xpath=//button[@type='submit']
    Wait Until Element Is Visible    xpath=//h6[text()='Dashboard']    10s
    Title Should Be    OrangeHRM

    Close Browser
