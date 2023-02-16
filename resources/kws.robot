*** Settings ***
Resource    base.robot

*** Keywords ***

Dado que eu adicione os itens no carrinho
    Open Browser                     ${url}    chrome
    Maximize Browser Window        
    Click Link                       Laptops
    Wait Until Element Is Visible    link=MacBook Pro
    Click Link                       MacBook Pro
    Wait Until Element Is Visible    ${addToCart}
    Click Element                    ${addToCart}
    Alert Should Be Present

E acesse o carrinho de compras
    Click Link                       Cart
    Click Button                     ${placeOrder}
Quando eu preencher o formulário
    Wait Until Element Is Visible    ${purchase}
    Input Text                       ${name}       Eza Lôbo
    Input Text                       ${country}    Brasil
    Input Text                       ${city}       Salvador
    Input Text                       ${card}       12345678910
    Input Text                       ${month}      07
    Input Text                       ${year}       2031
    Click Button                     ${purchase}

Então a compra deve ser confirmada
    Element Text Should Be           ${purchaseText}    Thank you for your purchase!
    Click Button                     ${confirm}

Dado visite o site da DemoBlaze
    Open Browser                     ${url}    chrome
    Maximize Browser Window        
        
Quando eu criar um cadastro
    Click Link                       Sign up
    Wait Until Element Is Visible    ${username}
    Input Text                       ${username}    eza
    Input Text                       ${password}    123
    Click Button                     ${singUpButton}

Então deve aparecer um alerta
    Alert Should Be Present

Quando eu realizar o login
    Click Link                       Log in
    Wait Until Element Is Visible    ${user} 
    Input Text                       ${user}    eza
    Input Text                       ${pass}    123
    Click Button                     ${loginButton}

Então devo estar logado no site
    Wait Until Element Is Visible    ${welcome}
    Element Text Should Be           ${welcome}    Welcome eza