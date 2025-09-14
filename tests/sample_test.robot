*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Resource         ../variables/variables.resource

*** Test Cases ***
Open Google Homepage
    [Documentation]    Opens the Google homepage and checks the title
    Open Browser To Homepage
    Title Should Be    ${EXPECTED_TITLE}
    Close Browser
