*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Load
    Wait until page contains    Back to results

Add to Cart
    Click element  //input[@id='add-to-cart-button']