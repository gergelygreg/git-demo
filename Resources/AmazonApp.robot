*** Settings ***
Resource    ..//Resources/PO/LandingPage.robot
Resource    ..//Resources/PO/TopNav.robot
Resource    ..//Resources/PO/SearchResults.robot
Resource    ..//Resources/PO/Product.robot
Resource    ..//Resources/PO/Cart.robot
Resource    ..//Resources/PO/SignIn.robot

*** Keywords ***
Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login With Valid Credentials    ${Username}

Login With Invalid Credentilas
    SignIn.Fill "Email" Field    test@email.com
    SignIn.Click Sign In Button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Load

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Page Loaded

Begin Checkout
    Cart.Proced to Checkout
    SignIn.Verify Page Loaded



