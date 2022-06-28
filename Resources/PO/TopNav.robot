*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =  //input[@id='twotabsearchtextbox']
${TOPNAV_SEARCH_BUTTON} =  //input[@id='nav-search-submit-button']

*** Keywords ***
Search for Products
    #Input text  //input[@id='twotabsearchtextbox']    ${SEARCH_TERM}
    #Click element  //input[@id='nav-search-submit-button']

    Input text  ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}
    Click element    ${TOPNAV_SEARCH_BUTTON}