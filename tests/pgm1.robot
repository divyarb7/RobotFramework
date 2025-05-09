*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Login Page
    Open Browser    https://opensource-demo.orangehrmlive.com    firefox    #Opens firefox and enters the url
    Maximize Browser Window    #Maximises the browser window

    Wait Until Element Is Visible    name=username    20s    #Waits 20s till the landing page loads up
    Input Text    name=username    Admin    #Enters the specified username in the username textbox

    Wait Until Element Is Visible    name=password    20s    #Waits 20s
    Input Text    name=password    admin123    #Enters the specified password in the password textbox

    Click Button    xpath=//button[@type='submit']    #Clicks the button tag with type=submit
    Wait Until Element Is Visible    xpath=//h6[text()='Dashboard']    20s    #Waits 20s for h6 tag with text=Dashboard to load up 
    Title Should Be    OrangeHRM    #Checks if title is OrangeHRM

    Close Browser    #Closes browser
