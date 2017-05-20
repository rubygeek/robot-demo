*** Settings ***
Documentation   A test to demo testing YouTube
Library         Selenium2Library

*** Variables ***
${BROWSER}  Firefox
${DELAY}    0

*** Keywords ***
Open Homepage
  Open Browser  https://www.youtube.com  ${BROWSER}

*** Test Cases ***
Homepage Loads
  Open Homepage
  Element Should Be Visible  id=yt-masthead-logo-fragment
  [Teardown]  Close Browser

Visit Trending Videos
  Open Homepage
  Click Element  link=Trending
  ${url}=  Get Location
  Should Be Equal  ${url}  https://www.youtube.com/feed/trending
  [Teardown]  Close Browser

Do a Search
  Open Homepage
  Input Text  id=masthead-search-term  automation
  Click Button  css=.search-button
  Wait Until Page Contains  results
  [Teardown]  Close Browser
