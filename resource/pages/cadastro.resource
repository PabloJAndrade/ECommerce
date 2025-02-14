*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Realizar Sign in        
    [Arguments]    ${email}
    Wait And Click Element    ${home.sign}
    Wait And Input Text    ${signin.inputEmail}    ${email}
    Click    ${signin.submitEmail}
Criar Conta
    Wait And Click Element    ${cadastrarConta.titulo}
    Fill Text    ${cadastrarConta.primeiroNome}    Pablo
    Fill Text    ${cadastrarConta.ultimoNome}    Craveiro
    Fill Text    ${cadastrarConta.senha}    ${SENHA}
    Wait And Click Element    ${cadastrarConta.registrar}