*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Realizar ordenacao de itens
    Mouse Move Relative To    ${home.topBar}
    Click    ${home.opcaoTopBar}
    Sleep    5
    Select Options By    css=#selectProductSort    label    Price: Lowest first
    Validar Ordenação Por Preço Crescente

Validar Ordenação Por Preço Crescente
    ${prices}      Get Text    .product_list .price.product-price
    Log    Prices extracted: ${prices}
    
    ${prices_clean}=    Create List
    FOR    ${price}    IN    ${prices}
        # Limpar a string, remover o símbolo '$' e os espaços extras
        ${cleaned_price}    Evaluate    ${price.strip().strip('$')}
        # Log para ver como o valor fica após a limpeza
        Log    Cleaned price: ${cleaned_price}
        
        # Converter para float
        ${price_number}    Evaluate    float(${cleaned_price})
        # Log para verificar o valor convertido para float
        Log    Converted price: ${price_number}
        
        Append To List    ${prices_clean}    ${price_number}
    END
    
    ${sorted_prices}=    Evaluate    sorted(${prices_clean})
    Log    Sorted prices: ${sorted_prices}
    
    Should Be Equal    ${prices_clean}    ${sorted_prices}