*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ..//Resources/AmazonApp.robot
Resource    ..//Resources/Common.robot
Suite Setup    Insert Testing Data
Test Setup    Begin Web Test
Test Teardown  End Web Test
Suite Teardown    Cleanup Testing Data

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    https://amazon.com
${SEARCH_TERM} =    Ferrari 458
${LOGIN_EMAIL} = admin@robotframeworktutorial.com
#${LOGIN_PASSWORD} = myPassword1

*** Test Cases ***
Should be able to login
    AmazonApp.Login    ${LOGIN_EMAIL}

Logged out user should be able to search for products
    [Documentation]    This is some basic info about test
    [Tags]    Current
    AmazonApp.Search for Products

Logged out user should be albe to view a product
    [Documentation]    This is some basic info about test
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user should be able to view a product
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should be asked to sign in to checkout
    [Documentation]    This is some basic info about test2
    [Tags]    Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
