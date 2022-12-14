*** Settings ***   
Documentation    Tarefa 3: Vamos praticar com LISTAS!

*** Variables ***

@{MESES}    Janeiro    Feveireiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro


*** Test Cases ***
Test Case - Exercicio Tarefa 3
    tarefa 3



*** Keywords ***

tarefa 3
    Log To Console    O ano possui os meses: ${MESES[0]}
    Log To Console    O ano possui os meses: ${MESES[1]}
    Log To Console    O ano possui os meses: ${MESES[2]}
    Log To Console    O ano possui os meses: ${MESES[3]}
    Log To Console    O ano possui os meses: ${MESES[4]}
    Log To Console    O ano possui os meses: ${MESES[5]}
    Log To Console    O ano possui os meses: ${MESES[6]}
    Log To Console    O ano possui os meses: ${MESES[7]}
    Log To Console    O ano possui os meses: ${MESES[8]}
    Log To Console    O ano possui os meses: ${MESES[9]}
    Log To Console    O ano possui os meses: ${MESES[10]}
    Log To Console    O ano possui os meses: ${MESES[11]}

    