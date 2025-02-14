*** Settings ***
Documentation    Suite para cadastro de conta
Resource    ../base.resource
Test Setup    Abrir Browser

*** Test Cases ***
Cenario: Realizar login com Sucesso
    Realizar login com Sucesso

Cenario: Realizar login com Falha
    Realizar Login Com Falha

Cenario: Realizar cadastro de Conta
    ${email}=    Gerar Email Aleatorio
    Realizar Sign in    ${email}
    Criar Conta

Cenario: Adicionar item ao carrinho
        Adicionar Item Ao carirnho

Cenario: Remover item do carrinho
        Adicionar Item Ao carirnho
        Remover Item do carrinho

Cenario: Finalizar Compra
    Finalizar checkout

Cenario: Ordenação de itens
    Realizar ordenacao de itens
