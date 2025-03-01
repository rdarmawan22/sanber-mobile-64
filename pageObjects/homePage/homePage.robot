*** Settings ***
Library        AppiumLibrary
Variables    home-page-locators.yaml

*** Variables ***
${VALID_FLIGHT_NUMBER}    DA935
${INVALID_FLIGHT_NUMBER}  JA513

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]
Click Sign In Button On Home Screen
    Click Element        locator=${sign_in_login_button}

Verify Username Apprears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Verify Book Button Apprears
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Verify Search Button Apprears
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Verify Check In Button Appears
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/button6"]

Click Search Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Verify Enter flight Number Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/enterFlight"]

Input Flight Number
    [Arguments]    ${flight_number}
    Input Text    locator=${flight_number_input}    text=${flight_number}

Click Search Flight Number
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify Message Icon Appears
    Wait Until Element Is Visible    locator=//android.widget.ImageButton[@resource-id="com.example.myapplication:id/fab"]

Verify Invalid Message Appears
    Wait Until Page Contains    text="Please enter valid Flight Number"
Verify Destination Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="Toronto to Paris"]

Verify Terminal Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="Terminal"]

Verify Schedule Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="Schedule"]

Verify Departed Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="Departed"]

Verify Flight Number Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="DA 935"]

Verify Time Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="17:00"]

Verify Arrival Status
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="On Time"]