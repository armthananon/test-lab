*** Settings ***
Library     RequestsLibrary


*** Test Cases ***
hello_world
    ${response}=    Get    http://127.0.0.1:5000/
    Status Should Be    200    ${response}

true_when_x_is_17
    ${response}=    Get    http://127.0.0.1:5000/is_prime/17
    Status Should Be    200    ${response}
    Should Be Equal As Strings    ${response.content}    true

true_when_x_is_36
    ${response}=    Get    http://127.0.0.1:5000/is_prime/36
    Status Should Be    200    ${response}
    Should Be Equal As Strings    ${response.content}    false

true_when_x_is_13219
    ${response}=    Get    http://127.0.0.1:5000/is_prime/13219
    Status Should Be    200    ${response}
    Should Be Equal As Strings    ${response.content}    true
