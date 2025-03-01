*** Settings ***
Resource          ../pageObjects/homePage/homePage.robot
Resource          ../pageObjects/loginPage/loginPage.robot
Resource          ../pageObjects/base.robot
Test Setup        Run Keywords    Open Flight Application
Test Teardown     Close Flight Application


*** Test Cases ***
User Should Be Able To Search Flight Number
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${VALID_USERNAME}
    Input Password    password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Username Apprears
    Verify Book Button Apprears
    Verify Search Button Apprears
    Verify Check In Button Appears
    Click Search Button
    Verify Enter flight Number Appears
    Input Flight Number    flight_number=${VALID_FLIGHT_NUMBER}
    Verify Message Icon Appears
    Click Search Flight Number
    Verify Destination Appears
    Verify Terminal Appears
    Verify Schedule Appears
    Verify Departed Appears
    Verify Flight Number Appears
    Verify Time Appears
    Verify Arrival Status


    
     