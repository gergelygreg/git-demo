*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
User can search for products
    @{url_and_browser} =    Set Variable    http://www.google.com     chrome
    Begin Web Test   @{url_and_browser}

*** Keywords ***
Begin Web Test
    [Arguments]    @{url_and_browser}
    Open Browser    ${url_and_browser}[0]    ${url_and_browser}[1]
    click element     //div[@class="QS5gu sy4vM"]
    maximize browser window
    Sleep    20s
    Close Browser

