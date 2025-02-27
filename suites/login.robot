*** Settings ***
Resource        ../pageObjects/homePage/homePage.robot
Resource        ../pageObjects/loginPage/loginPage.robot
Resource        ../pageObjects/base.robot

# Input Password
# Click Sign In Button On Sign In Screen
# Verify User Sucessfully Login

*** Test Cases ***
User Should Be Able To Login with Valid Data
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username
    Close Flight Application
