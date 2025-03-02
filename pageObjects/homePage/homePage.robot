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

Click Book Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Verify One Way Trip Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="ONE WAY"]

Verify Round Trip Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="ROUND TRIP"]

Click From City Field
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]

Verify From City Field
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]

Click Chicago Value in From City Field
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]

Click To City Field
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]

Verify To City Field
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]

Click Value on City Field
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]

Click Class Field
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]

Verify Class Field
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]

Click First Value in Class Field
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]

Click Start Date Field
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]

Verify Calender Appears
    Wait Until Element Is Visible    locator=//android.view.View[@resource-id="android:id/month_view"]

Click Value in Start Date Field
    Click Element    locator=//android.view.View[@content-desc="01 August 2019"]

Click OK Button in Start Date Field
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

Click End Date Field
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]

Verify Calender on End Date Appears
    Wait Until Element Is Visible    locator=//android.view.View[@resource-id="android:id/month_view"]

Click Value in End Date Field
    Click Element    locator=//android.view.View[@content-desc="02 August 2019"]

Click OK Button in End Date Field
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

Click Flight Collom
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Click Flight and Hotel Collom
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]

Click Book Confrim Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Verify Price Massage Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView6"]

Verify Start and Return Collom Appears
    Wait Until Element Is Visible    locator=//android.widget.Button[@text="Start/Return"]

Click One Value of Price
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]

Click Confrim Button on Price List
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify Booked Massage Appears
    Wait Until Element Is Visible    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]