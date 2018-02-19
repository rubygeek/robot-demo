*** Settings ***
Documentation   A test to demo testing YouTube
Library         SeleniumLibrary

*** Variables ***
${BROWSER}  Firefox
${DELAY}    0



# Our Page Object Pattern 
# When the css/structure of page changes, we update the method to find here

${FIND_LOGO}           id=yt-masthead-logo-fragment 
${FIND_TRENDING_LINK}  link=Trending
${FIND_SEARCH_FIELD}   id=masthead-search-term
${FIND_SEARCH_BUTTON}  css=.search-button 


*** Keywords ***

Open Homepage
  Open Browser  https://www.youtube.com  ${BROWSER}



*** Test Cases ***

Homepage Loads
  Open Homepage
  Element Should Be Visible  ${FIND_LOGO}
  [Teardown]  Close Browser

Visit Trending Videos
  Open Homepage
  Click Element  ${FIND_TRENDING_LINK}
  ${url}=  Get Location
  Should Be Equal  ${url}  https://www.youtube.com/feed/trending
  [Teardown]  Close Browser

Search Loads Results
  Open Homepage
  Input Text  ${FIND_SEARCH_FIELD}  automation
  Click Button  ${FIND_SEARCH_BUTTON}
  Wait Until Page Contains  results
  [Teardown]  Close Browser
