*** Settings ***
Documentation   A demo to test Weather Underground
Library         SeleniumLibrary

*** Variables ***
${BROWSER}  Firefox
${DELAY}    0


# Our Page Object Pattern 
# When the css/structure of page changes, we update the method to find here

${FIND_LOGO}           css=#header-logo
${FIND_RADAR_LINK}     css=#feature-menu > ul > li:nth-child(1) > label
${FIND_CITY_HEADER}    css=#inner-content > div.city-header > div > div > city-header > div > h1


*** Keywords ***

Open Homepage
  Open Browser  https://www.wunderground.com/  ${BROWSER}

*** Test Cases ***

Homepage Loads
    [Tags]
    Open Homepage
    Element Should Be Visible  ${FIND_LOGO}
    [Teardown]  Close Browser

Visit Maps and Radar Page
    [Tags]  
    Open Homepage
    Click Element  ${FIND_RADAR_LINK}
    Title Should Be  Weather Forecast & Reports - Long Range & Local | Weather Underground
    [Teardown]  Close Browser     

View City Page
    [Tags]
    Open Homepage
    Go To  https://www.wunderground.com/weather/us/tx/austin/
    Element Should Be Visible  ${FIND_CITY_HEADER}