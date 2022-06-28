*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =    xpath=//h1

*** Keywords ***
Verify Page Loaded
    #Page should contain element  //h1[normalize-space()='Sign-In']
    #element text should be  //h1[normalize-space()='Sign-In']    Sign-In

    Page should contain element    ${SIGNIN_MAIN_HEADING}
    Element text should be    ${SIGNIN_MAIN_HEADING}    Sign-In

Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" Field    ${Username}
    Click Sign In Button

Fill "Email" Field
    [Arguments]  ${Username}
    Log    Filling Email field with    ${Username}

Fill "Password" Field
    [Arguments]    ${Password}
    Log    Filling Password field with  ${Password}

Click Sign In Button
    Log    Clicking submit button