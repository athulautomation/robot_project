*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    BuiltIn
Library    OperatingSystem

*** Keywords ***
Open Browser To Homepage
    [Arguments]    ${url}=${URL}
    # Create ChromeOptions object
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    # Add headless if needed
    Run Keyword If    '${HEADLESS}'=='true'    Call Method    ${options}    add_argument    --headless
    # Open browser on Selenium Grid
    Open Browser    ${url}    ${BROWSER}    remote_url=${SELENIUM_GRID_URL}    options=${options}
    Maximize Browser Window

