*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Wait And Click Element
    [Arguments]    ${locator}
    Scroll To Element    ${locator}
    Wait For Elements State    ${locator}    visible
    Click    ${locator}

Wait And Input Text
    [Arguments]    ${locator}    ${text}
    Wait For Elements State    ${locator}    visible
    Fill Text    ${locator}    ${text}

Gerar Email Aleatorio
     ${email}=    Evaluate JavaScript    css=body    () => { return 'user' + Math.floor(Math.random() * 10000) + '@test.com'; }
    RETURN    ${email}

Wait Element Should Contain Text
    [Arguments]    ${locator}    ${expectedText}
    Wait For Elements State    ${locator}    visible
    Get Text    ${locator}    ==    ${expectedText}