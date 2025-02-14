*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Adicionar Item Ao carirnho
    Mouse Move Relative To    ${home.topBar}
    Click    ${home.opcaoTopBar}
    Scroll To Element    ${pesquisa.resultados}
    Mouse Move Relative To     ${pesquisa.resultados}
    Click    ${pesquisa.clickResultado}
    Mouse Move Relative To    ${produto.cor}
    Click     ${produto.cor}
    Click    ${produto.addCart}
    Wait And Click Element    ${produto.irParaCheckout}

Remover Item do carrinho
    Wait And Click Element    ${carrinho.remover}
    Wait Element Should Contain Text    //p[@class='alert alert-warning']    Your shopping cart is empty.


Finalizar checkout
    ${email}=    Gerar Email Aleatorio
    Adicionar Item Ao carirnho
    Realizar login com Sucesso
    Mouse Move Relative To    ${carrinho.cart}
    Wait And Click Element    ${carrinho.checkout}
    Wait And Click Element    ${carrinho.CarrinhoParaCheckout}
    Wait And Click Element    ${carrinho.CarrinhoParaCheckout}
    Click    ${entrega.termos}
    Wait And Click Element    ${entrega.confirm}
    Wait And Click Element    ${pagamento.metodo}
    Wait And Click Element    ${pagamento.confirmado}
    Sleep    5
    Wait Element Should Contain Text    //p[@class='alert alert-success']    Your order on My Shop is complete.






Preencher Formulario de endereco
    [Arguments]    ${estado}
    Fill Text    ${formulario.endereco}    543 F2 Center Park
    Fill Text    ${formulario.cidade}      Recife
    ${selected_estado} =    Select Options By        id=id_state    label    ${estado}
    Fill Text    ${formulario.cep}         12345
    Fill Text    ${formulario.fone}        0213455436
    Fill Text    ${formulario.cel}         0345436786
    Wait And Click Element    ${formulario.salvar}

