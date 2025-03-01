*** Settings ***
Library      AppiumLibrary
Variables    login-page-locators.yaml

*** Variables ***
${VALID_USERNAME}      support@ngendigital.com
${VALID_PASSWORD}      abc123
${INVALID_USERNAME}    invalid_user@ngendigital.com
${INVALID_PASSWORD}    demo321

*** Keywords ***
Verify Sign In Screen Appears
    Wait Until Element Is Visible        locator=${username_input}

Input Username
    [Arguments]    ${username}
    Input Text        locator=${username_input}        text=${username}

Input Password
    [Arguments]    ${password}
    Input Text    locator=${password_input}    text=${password}
    
Click Sign In Button
    Click Element    locator=${sign_in_button}

Login
    [Arguments]    ${username}=support@ngendigital.com    ${password}=abc123
    Verify Sign In Screen Appears
    Input Username    username=${username}
    Input Password    password=${password}
    Click Sign In Button

