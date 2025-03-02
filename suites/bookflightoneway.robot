*** Settings ***
Resource          ../pageObjects/homePage/homePage.robot
Resource          ../pageObjects/loginPage/loginPage.robot
Resource          ../pageObjects/base.robot
Test Setup        Run Keywords    Open Flight Application
Test Teardown     Close Flight Application


*** Test Cases ***
User Should Be Able To Booking Flight and Hotel
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${VALID_USERNAME}
    loginPage.Input Password    password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Username Apprears
    Verify Book Button Apprears
    Verify Search Button Apprears
    Verify Check In Button Appears
    Click Book Button
    Verify One Way Trip Appears
    Verify Round Trip Appears
    Click From City Field
    Verify From City Field
    Click Chicago Value in From City Field
    Click To City Field
    Verify To City Field
    Click Value on City Field
    Click Class Field
    Verify Class Field
    Click First Value in Class Field
    Click Start Date Field
    Verify Calender Appears
    Click Value in Start Date Field
    Click OK Button in Start Date Field
    Click End Date Field
    Verify Calender on End Date Appears
    Click Value in End Date Field
    Click OK Button in End Date Field
    Click Flight and Hotel Collom
    Click Book Confrim Button
    Verify Price Massage Appears
    Verify Start and Return Collom Appears
    Click One Value of Price
    Click Confrim Button on Price List
    Verify Booked Massage Appears

User Should Be Able To Booking Flight
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${VALID_USERNAME}
    loginPage.Input Password    password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Username Apprears
    Verify Book Button Apprears
    Verify Search Button Apprears
    Verify Check In Button Appears
    Click Book Button
    Verify One Way Trip Appears
    Verify Round Trip Appears
    Click From City Field
    Verify From City Field
    Click Chicago Value in From City Field
    Click To City Field
    Verify To City Field
    Click Value on City Field
    Click Class Field
    Verify Class Field
    Click First Value in Class Field
    Click Start Date Field
    Verify Calender Appears
    Click Value in Start Date Field
    Click OK Button in Start Date Field
    Click End Date Field
    Verify Calender on End Date Appears
    Click Value in End Date Field
    Click OK Button in End Date Field
    Click Flight Collom
    Click Book Confrim Button
    Verify Price Massage Appears
    Verify Start and Return Collom Appears
    Click One Value of Price
    Click Confrim Button on Price List
    Verify Booked Massage Appears