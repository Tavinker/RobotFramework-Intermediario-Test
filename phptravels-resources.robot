*** Settings ***
Library    SeleniumLibrary   



*** Variables ***

#${homepage}
${mensagem_h1_homepage}                            //strong[contains(.,'Startup Your Online Travel Agency Today!')]
${titulo_homepage}                                 PHPTRAVELS Best Open Source PHP Booking Software
${url_homepage}                                    https://phptravels.com/

#${pricing}
${menu_pricing}                                    //a[@class='jfHeader-menuListLink jfHeader-dynamicLink js-tracking js-myforms'][contains(.,'Pricing')]
${titulo_pagina_pricing}                           Phptravels Plans &amp; Pricing | One Time Payment
${plano_enterprise}                                //strong[contains(.,'Enterprise')]
${botao_buynow_entreprise}                         //a[contains(.,'Buy Now')]

#${formulario_compra}
${formulario_compra_url}                            https://store.payproglobal.com/checkout?products[1][id]=77290
${botao_enviarpedido_form_compra}                   //button[@type='submit'][contains(.,'Enviar pedido')]

#${company}
${menu_navbar_company}                              //a[@class='jfHeader-menuListLink jfHeader-dynamicLink js-tracking'][contains(.,'Company')]
${menu_navbar_company_item_docs}                    //a[@class='jfHeader-subMenuItemLink jfHeader-dynamicLink js-tracking'][contains(.,'Docs')]

#${blog}
${h1_welcome_docs}                                  //h1[@data-rnw-media-class='236__235'][contains(.,'Welcome')]
${campo_search}                                     //div[@aria-label='Search…'][contains(.,'Search…⌃K')]
${campo_search_expandido}                           //input[contains(@placeholder,'Search content…')]
${resultado_pesquisa_api}                           //div[contains(@class,'css-1dbjc4n r-1awozwy r-1vckr1u r-1loqt21 r-18u37iz r-1guathk r-1yzf0co r-1otgn73 r-eafdt9 r-1i6wzkk r-lrvibr')]
${h1_titulo_page_api_response_error}                //h1[@data-rnw-media-class='236__235'][contains(.,'API Response Error')]







*** Keywords ***

#Test Setup 
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window

#Setup Teardown
Fechar navegador
    Capture Page Screenshot
    Close Browser













#TC01 - Acessando o formulário de compra do Entreprise Package
Acessar a home page do site phptravels.com
    Go To    url=https://phptravels.com/

Verificar se o título da página fica "PHPTRAVELS Best Open Source PHP Booking Software"
    Sleep    3
    Title Should Be    title=${titulo_homepage}

Entrar no menu "Pricing"
    Click Element    locator=${menu_pricing}

Verificar se aparece a frase "Plans and Prices"
    Sleep    2
    Wait Until Element Is Visible    locator=//h1[@class='mb-0'][contains(.,'Plans and Prices')]

Verificar se o título da página fica "Phptravels Plans &amp; Pricing | One Time Payment"
    Title Should Be    title=${titulo_pagina_pricing}

Verificar se aparece o plano "Enterprise"   
    Wait Until Element Is Visible    locator=${plano_enterprise}

Entrar no menu "BUY NOW"
    Click Element    locator=${botao_buynow_entreprise}
    Go To    url=${formulario_compra_url}

Validar se aparece o botão "Enviar Pedido"
    Sleep    3
    Wait Until Element Is Visible    locator=${botao_enviarpedido_form_compra}  












#TC02 - Pesquisa por palavra na página Docs
Acessar novamente a home page do phptravels.com
    Go To    url=https://phptravels.com/

Passar o mouse no menu da navbar "Company"
    Mouse Over    locator=${menu_navbar_company}
    Sleep    3

Acessar a página "Docs"
    Go To    url=https://docs.phptravels.com/
    
Verificar se aparece o titulo "Welcome"
    Sleep    5
    Wait Until Element Is Visible    locator=${h1_welcome_docs}

Clicar no campo "Search"
    Click Element    locator=${campo_search}
    Sleep    5

Inserir a palavra "api"
    Input Text    locator=${campo_search_expandido}    text=api
    
Selecionar a opção disponível
    Wait Until Element Is Visible    locator=${resultado_pesquisa_api} 
    Click Element    locator=${resultado_pesquisa_api} 

Verificar se aparece o título "API Response Error"
    Wait Until Element Is Visible    locator=${h1_titulo_page_api_response_error}
    









































# ==================> KEYWORDS PARA O ARQUIVO "phptravels-test-bdd-gherkin.robot" <==================

# Abaixo será inserido as novas keywords do arquivo "phptravels-test-bdd-gherkin.robot", porém,
# dentro dessas keywords, serão inseridas as já existentes aqui no arquivo "phptravels-resources.robot".
# será reutilizado todo o código já escrito anteriormente (captura delementos, etc).


#TC01 - Acessando o formulário de compra do "Entreprise Package"
Dado que eu queira acessar a home page do site phptravels.com
    Acessar a home page do site phptravels.com

Quando eu verificar se o título da página fica "PHPTRAVELS Best Open Source PHP Booking Software"
    Verificar se o título da página fica "PHPTRAVELS Best Open Source PHP Booking Software"

E entrar no menu "Pricing"
    Entrar no menu "Pricing"

E verificar se aparece a frase "Plans and Prices"
    Verificar se aparece a frase "Plans and Prices"

E verificar se o título da página fica "Phptravels Plans &amp; Pricing | One Time Payment"
    Verificar se o título da página fica "Phptravels Plans &amp; Pricing | One Time Payment"

E verificar se aparece o plano "Enterprise"
    Verificar se aparece o plano "Enterprise"

E entrar no menu "BUY NOW"
    Entrar no menu "BUY NOW"

Então devo validar se aparece o botão "Enviar Pedido"
    Validar se aparece o botão "Enviar Pedido"
    











#TC02 - Pesquisa por palavra na página Docs
Dado que eu queira acessar novamente a home page do phptravels.com
    Acessar novamente a home page do phptravels.com

Quando eu passar o mouse no menu da navbar "Company"
    Passar o mouse no menu da navbar "Company"

E acessar a página "Docs"   
    Acessar a página "Docs"

E verificar se aparece o titulo "Welcome"
    Verificar se aparece o titulo "Welcome"

E clicar no campo "Search"
    Clicar no campo "Search"
    
E inserir a palavra "api"
    Inserir a palavra "api"

E selecionar a opção disponível
    Selecionar a opção disponível

Então devo verificar se aparece o título "API Response Error"
    Verificar se aparece o título "API Response Error"