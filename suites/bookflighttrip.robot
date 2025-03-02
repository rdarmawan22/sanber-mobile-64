*** Settings ***
Resource          ../pageObjects/homePage/homePage.robot
Resource          ../pageObjects/loginPage/loginPage.robot
Resource          ../pageObjects/base.robot
#Test Setup        Run Keywords    Open Flight Application
Suite Setup       Open Flight Application
Suite Teardown    Close Flight Application
#Suite Teardown    Close Flight Application

*** Test Cases ***
User Can Successfully Log In [TC001]
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${VALID_USERNAME}
    loginPage.Input Password    password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Username Apprears

User Can Select Flight Details [TC002]
    Click Element    id=com.example.myapplication:id/book
    Wait Until Element Is Visible    accessibility_id=Round Trip    10s
    Click Element    accessibility_id=Round Trip
    Click Element    id=com.example.myapplication:id/spinnerFrom
    Wait Until Element Is Visible     xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]    10s 
    Click Element    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]
    Click Element    id=com.example.myapplication:id/spinnerTo
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]    10s
    Click Element    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]
    Click Element    id=com.example.myapplication:id/spinnerClass
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]    10s
    Click Element    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]

User Can Select Flight Dates [TC003]
    Wait Until Element Is Visible    id=com.example.myapplication:id/textStartDate    10s
    Click Element    id=com.example.myapplication:id/textStartDate
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]    10s
    Click Element     xpath=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="2023"]    10s
    Click Element    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="2023"]
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="14 August 2023"]    10s
    Click Element    xpath=//android.view.View[@content-desc="14 August 2023"]
    Click Element    xpath=//android.widget.Button[@resource-id="android:id/button1"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]    10s
    Click Element    xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]    10s
    Click Element     xpath=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="2023"]    10s
    Click Element    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="2023"]
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="15 August 2023"]    10s
    Click Element    xpath=//android.view.View[@content-desc="15 August 2023"]
    Click Element    xpath=//android.widget.Button[@resource-id="android:id/button1"]    

User Can Book Flight With Hotel [TC004]
    Wait Until Element Is Visible    xpath=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]    10s
    Click Element    xpath=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]
    Click Element    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/price4"]    10s
    Click Element    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/price4"]
    Click Element    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]
    
    ${text}=    Get Text    id=com.example.myapplication:id/checkedTextView
    Should Contain    ${text}    Your flight is booked
