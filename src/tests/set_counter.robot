*** Settings ***
Resource  resource.robot
Suite Setup    Run Keywords    Open And Configure Browser    AND    Reset Counter
Suite Teardown  Close Browser

*** Test Cases ***
Counter Can Be Set To Ten
    Go To  ${HOME_URL}
    Click  button >> text=Nollaa
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta arvo
    Get Text  body  *=  nappia painettu 10 kertaa