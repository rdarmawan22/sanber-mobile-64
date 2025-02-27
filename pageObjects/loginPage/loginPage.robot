*** Settings ***
Library        AppiumLibrary

*** Variables ***
${VALID_USERNAME}    support@ngendigital.com

*** Keywords ***
Verify Sign In Screen Appears
    Wait Until Element Is Visible        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

Input Username
    Input Text        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]        text=${VALID_USERNAME}
