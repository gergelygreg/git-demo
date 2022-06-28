*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    Go to    ${START_URL}

Verify Page Loaded
    Page should contain element    //a[@id='nav-logo-sprites']