*** Settings ***
Documentation    Suite para exemplificar o uso de logs nos testes.
...                 Os logs são de grande utilidade, principalmente para analisar como seu teste está sendo executado nas entrelinhas.
...                 Os logs nos ajudam a achar falhas na automação dos testes.
...                 Vamos usar logs sem moderação!!!

Library    SeleniumLibrary


*** Variables ***
@{FRUTAS}    maça    banana    uva    abacaxi



*** Test Cases ***
TC01 - Exemplo01
    Usando log para mensagens
    Usando log console
    Usando screenshots



*** Keywords ***
Usando log para mensagens
    Log    Minha mensagem de log

    ${VAR}    Set Variable    variavel qualquer
    Log    Posso gerar um log de uma ${VAR} no meio de um log

Usando log console
    Log To Console    Posso gerar um log na saída do console
    Log Many          Posso gerar um log de uma lista completa @{FRUTAS}
    Log    Posso gerar um log somente de itens específicos da minha lista: ${FRUTAS[0]} - ${FRUTAS[1]}

Usando screenshots
    Log    Nos testes web, podemos logar screenshots com a SeleniumLibrary
    Open Browser     http://robotizandotestes.blogspot.com/    chrome
    Capture Page Screenshot    meu_screenshot.png
    Close Browser