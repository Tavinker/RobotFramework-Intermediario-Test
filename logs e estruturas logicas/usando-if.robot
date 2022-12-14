*** Settings ***
Documentation    Suite para exemplificar o uso de IF nos testes
...              O IF deve ser pouco utilizado, apenas quando necessário.


*** Variables ***
@{FRUTAS}    maça    banana    uva    abacaxi



*** Test Cases ***
TC01 - Exemplo01
    Rodando uma keyword dada uma condição = true
    Rodando uma keyword dada uma condição = false
    Armazenando um valor em uma variável dada uma condição



*** Keywords ***
Rodando uma keyword dada uma condição = true
    Run Keyword If    '${FRUTAS[1]}' == 'banana'    Log    O item número 1 da lista é a banana!

Rodando uma keyword dada uma condição = false
    Run Keyword Unless    '${FRUTAS[1]}' == 'maça'    Log    O item número 1 não é uma maça!

Armazenando um valor em uma variável dada uma condição
    ${VAR}    Set Variable If    '${FRUTAS[2]}' == 'uva'    uva
    Log    Minha variável VAR é uma ${VAR}!!

