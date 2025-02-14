*** Settings ***
### Bibliotecas
Library    Browser    strict=${False}
Library    Collections
### Locator
Variables    resource/locators/homePage.yml   
Variables    resource/locators/cadastro.yml
Variables    resource/locators/confirmEndereco.yml
Variables    resource/locators/entrega.yml
Variables    resource/locators/pagamento.yml
Variables    resource/locators/produto.yml
Variables    resource/locators/endereco.yml
Variables    resource/locators/carrinho.yml


### Pages
Resource    resource/pages/cadastro.resource
Resource    resource/pages/checkout.resource
Resource    resource/pages/login.resource
Resource    resource/pages/ordenacao.resource

### Utils
Resource    resource/utils/openBrowser.resource
Resource    resource/utils/customKeywords.resource
