*** Settings ***
Resource  resource.robot
Suite Setup    Run Keywords    Open And Configure Browser    AND    Reset Counter
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click  button >> text=Nollaa
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 1 kertaa
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa