## Robot Framework Demo

This is a demo of using python's [Robot Framework](http://robotframework.org/) to test Weather Underground. This is just meant to show the awesomeness of this framework.

#### Needed python goodies
* Python 3+
* pip install robotframework
* pip install robotframework-seleniumlibrary

#### Install selenium server
* brew install selenium-server-standalone

#### Install Chrome Driver
* brew install chromedriver 


## Running the Tests 

```
▶ robot weather-underground.robot
==============================================================================
Weather-Underground :: A demo to test Weather Underground
==============================================================================
Homepage Loads                                                        | PASS |
------------------------------------------------------------------------------
Visit Maps and Radar Page                                             | PASS |
------------------------------------------------------------------------------
View City Page                                                        | PASS |
------------------------------------------------------------------------------
Weather-Underground :: A demo to test Weather Underground             | PASS |
3 critical tests, 3 passed, 0 failed
3 tests total, 3 passed, 0 failed
==============================================================================
Output:  /Users/nstowe/personal/robot-demo/output.xml
Log:     /Users/nstowe/personal/robot-demo/log.html
Report:  /Users/nstowe/personal/robot-demo/report.html
```

