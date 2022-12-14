*** Settings ***
Documentation       Essa suite testa o site phptravels.com
Resource            phptravels-resources.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

#NOTA: esse arquivo serve para indicar que, é possível reutilizar keywords já existentes dentro de novas keywords.
# o exemplo que será utilizado é, com o mesmo arquivo de resource, o que faremos de diferente é apenas alterar 
# as keywords existente com o "Dado, Quando, E, Então" do Gherkin em seu começo, assim, formatando em BDD.
# como teremos o mesmo resource para os dois arquivos de testes, reutilizaremos as keywords do resource aqui.




*** Test Cases ***

#===================> TEST CASES SEM O GHERKIN/BDD <===================#
# TC01 - Acessando o formulário de compra do Entreprise Package
#     [Documentation]    Esse TC verifica todo o caminho até a compra do pacote Enterprise 
#     [Tags]             pricing    finalizar_compra    enterprise

#     Acessar a home page do site phptravels.com
#     Verificar se o título da página fica "PHPTRAVELS Best Open Source PHP Booking Software"
#     Entrar no menu "Pricing"
#     Verificar se aparece a frase "Plans and Prices"
#     Verificar se o título da página fica "Phptravels Plans &amp; Pricing | One Time Payment"
#     Verificar se aparece o plano "Enterprise"
#     Entrar no menu "BUY NOW"
#     Validar se aparece o botão "Enviar Pedido"


# TC02 - Pesquisa por palavra na página Docs
#     [Documentation]    Esse TC verifica a pesquisa de uma palavra na page Docs
#     [Tags]             docs    api    search

#     Acessar novamente a home page do phptravels.com
#     Passar o mouse no menu da navbar "Company"
#     Acessar a página "Docs"   
#     Verificar se aparece o titulo "Welcome"
#     Clicar no campo "Search"
#     Inserir a palavra "api"
#     Selecionar a opção disponível
#     Verificar se aparece o título "API Response Error"













#===================> TEST CASES COM GHERKIN E BDD <===================#
TC01 - Acessando o formulário de compra do Entreprise Package
    [Documentation]    Esse TC verifica todo o caminho até a compra do pacote Enterprise 
    [Tags]             pricing    finalizar_compra    enterprise

    Dado que eu queira acessar a home page do site phptravels.com
    Quando eu verificar se o título da página fica "PHPTRAVELS Best Open Source PHP Booking Software"
    E entrar no menu "Pricing"
    E verificar se aparece a frase "Plans and Prices"
    E verificar se o título da página fica "Phptravels Plans &amp; Pricing | One Time Payment"
    E verificar se aparece o plano "Enterprise"
    E entrar no menu "BUY NOW"
    Então devo validar se aparece o botão "Enviar Pedido"


TC02 - Pesquisa por palavra na página Docs
    [Documentation]    Esse TC verifica a pesquisa de uma palavra na page Docs
    [Tags]             docs    api    search

    Dado que eu queira acessar novamente a home page do phptravels.com
    Quando eu passar o mouse no menu da navbar "Company"
    E acessar a página "Docs"   
    E verificar se aparece o titulo "Welcome"
    E clicar no campo "Search"
    E inserir a palavra "api"
    E selecionar a opção disponível
    Então devo verificar se aparece o título "API Response Error"