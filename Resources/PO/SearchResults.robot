*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait until page contains    results for "${SEARCH_TERM}"

Click Product Link
    Click element    //div[@class='rush-component s-featured-result-item s-expand-height']//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(text(),'Ferrari Remote Control Cars - 1:24 BEZGAR Official')]