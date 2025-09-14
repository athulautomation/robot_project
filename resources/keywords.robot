*** Keywords ***
Open Browser To Homepage
    [Arguments]    ${url}=${URL}
    # Prepare options list
    ${options}=    Create List
    Run Keyword If    '${HEADLESS}'=='true'    Append To List    ${options}    --headless
    # Always add a unique user data dir to avoid conflicts
    ${tmp_dir}=    Evaluate    f"/tmp/robot_user_{int(time.time()*1000)}"    time
    Append To List    ${options}    --user-data-dir=${tmp_dir}
    # Open browser on Selenium Grid
    Open Browser    ${url}    ${BROWSER}    remote_url=${SELENIUM_GRID_URL}    options=${options}
    Maximize Browser Window
