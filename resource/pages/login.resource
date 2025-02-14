*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Realizar login com Sucesso
    Wait And Click Element    ${home.sign}
    Fill Text    ${login.inputEmail}        pablo@pablo.com.br
    Fill Text    ${login.inputPassword}     123Test@
    Click        ${login.signinButton}
    Wait Element Should Contain Text    //h1[normalize-space(text())='My account']    My account


Realizar Login Com Falha
    Wait And Click Element    ${home.sign}
    Fill Text    ${login.inputEmail}        pablo@pablo.com.br
    Fill Text    ${login.inputPassword}     123Test
    Click        ${login.signinButton}
    Wait Element Should Contain Text    //div[@class='alert alert-danger']//li[1]    Authentication failed.




