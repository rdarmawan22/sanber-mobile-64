*** Settings ***
Resource          ../pageObjects/base.robot
Resource          ../pageObjects/homePage/homePage.robot
Resource          ../pageObjects/loginPage/loginPage.robot
Test Setup        Run Keywords    Open Flight Application    AND   Verify Sign In Screen Appears
Test Teardown     Close Flight Application

# Input Password
# Click Sign In Button On Sign In Screen
# Verify User Sucessfully Login

*** Test Cases ***
User Should Be Able To Login with Valid Data
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    loginPage.Input Password    password=${VALID_PASSWORD}
    Click Sign In Button
    # Sleep       5s

User Should Not Be Able To Login with invalid Data
    Click Sign In Button On Home Screen
    Input Username    username=${INVALID_USERNAME}
    loginPage.Input Password    password=${INVALID_PASSWORD}
    Click Sign In Button
    # Sleep       5s