*** Settings ***
Resource         ../resources/base.robot

*** Test Cases ***
Realizar compra
    Dado que eu adicione os itens no carrinho
    E acesse o carrinho de compras
    Quando eu preencher o formulário
    Então a compra deve ser confirmada

Cadastro de usuário
    Dado visite o site da DemoBlaze
    Quando eu criar um cadastro
    Então deve aparecer um alerta

Cadastro de usuário
    Dado visite o site da DemoBlaze
    Quando eu realizar o login
    Então devo estar logado no site