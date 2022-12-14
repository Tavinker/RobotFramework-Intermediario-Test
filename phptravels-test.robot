*** Settings ***
Documentation       Essa suite testa o site phptravels.com
Resource            phptravels-resources.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador


*** Test Cases ***

TC01 - Acessando o formulário de compra do "Entreprise Package"
    [Documentation]    Esse TC verifica todo o caminho até a compra do pacote Enterprise
    [Tags]             pricing    finalizar_compra    enterprise
    
    Given Acessar a home page do site phptravels.com
    When Verificar se o título da página fica "PHPTRAVELS Best Open Source PHP Booking Software"
    And Entrar no menu "Pricing"
    And Verificar se aparece a frase "Plans and Prices"
    And Verificar se o título da página fica "Phptravels Plans &amp; Pricing | One Time Payment"
    And Verificar se aparece o plano "Enterprise"
    And Entrar no menu "BUY NOW"
    Then Validar se aparece o botão "Enviar Pedido"



TC02 - Pesquisa por palavra na página Docs
    [Documentation]    Esse TC verifica a pesquisa de uma palavra na page Docs
    [Tags]             docs    api    search

    Given Acessar novamente a home page do phptravels.com
    When Passar o mouse no menu da navbar "Company"
    And Acessar a página "Docs"   
    And Verificar se aparece o titulo "Welcome"
    And Clicar no campo "Search"
    And Inserir a palavra "api"
    And Selecionar a opção disponível
    Then Verificar se aparece o título "API Response Error"