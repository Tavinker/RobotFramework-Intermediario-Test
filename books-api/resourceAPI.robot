*** Settings ***
Documentation    Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Library          RequestsLibrary
Library          Collections


*** Variables ***
${URL_API}    https://fakerestapi.azurewebsites.net/api/
${RESPOSTA}

*** Keywords ***
#Setup e Teardown
Conectar a API
    Create Session    fakeAPI      ${URL_API}



#### Ações

#Buscar a listagem de todos os livros (GET em todos os livros)
Requisitar todos os livros
    ${RESPOSTA}   GET On Session    fakeAPI    /v1/Books    expected_status=any
    Log    ${RESPOSTA.text}


Conferir o status code
    [Arguments]        ${statuscode_desejado}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${statuscode_desejado}

Conferir o reason
    [Arguments]    ${reason_desejado}
    Should Be Equal As Strings    ${RESPOSTA.reason}    ${reason_desejado}

Conferir se retorna uma lista com "${QTD_LIVROS}" livros
    Length Should Be    ${RESPOSTA.json()}    ${QTD_LIVROS}
        