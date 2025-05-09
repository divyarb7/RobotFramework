*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Login Page
    # Step 1: Open the browser
    Open Browser    https://example.com/login    chrome
    
    # Step 2: Input username and password
    Input Text    username_field_locator    testuser
    Input Text    password_field_locator    testpassword
    
    # Step 3: Click the login button
    Click Element    login_button_locator
    
    # Step 4: Verify the next page title
    Title Should Be    Welcome Page
    
    # Step 5: Close the browser
    Close Browser
