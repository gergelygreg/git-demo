*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
     Wait until page contains    Added to Cart

Proced to Checkout
    Click element  //input[@value='Proceed to checkout']