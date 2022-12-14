*** Settings ***
Documentation    Utilizando loops no robot framework!


*** Variables ***
### Índice da lista     0        1          2         3          4        5
@{lista_de_frutas}    maça    abacaxi    banana    morango    laranja    uva



*** Test Cases ***
Teste de REPEAT KEYWORD
    [Documentation]    Chama uma mesma keyword várias vezes (repetição)
    Usando REPEAT KEYWORD

Teste de FOR do tipo IN RANGE
    [Documentation]    Faz um loop dentro de um intervalo que você passar
    Usando FOR IN RANGE

Teste de FOR do tipo IN
    [Documentation]    Faz um loop percorrendo a lista que você passar  
    Usando FOR IN

Teste de FOR do tipo IN ENUMERATE
    [Documentation]    Faz um loop percorrendo a lista que você quer passar e armazena/printa o índice dessa lista
    Usando FOR IN ENUMERATE

Teste de Sair do FOR
    [Documentation]    Você controla quando o FOR deve se encerrar antes de terminar todos os LOOPS
    Usando FOR IN com EXIT FOR LOOP IF






*** Keywords ***

#Teste de REPEAT KEYWORD
Usando REPEAT KEYWORD
    Log To Console    ${\n}
    Repeat Keyword    4x    Log To Console    Repetição de keyword!


#Teste de FOR do tipo IN RANGE
Usando FOR IN RANGE
    Log To Console    ${\n}
    FOR    ${CONTADOR}    IN RANGE   0    5
        Log To Console    Minha posição agora é: ${CONTADOR}
        Log    Minha posição agora é: ${CONTADOR}
    END


#Teste de FOR do tipo IN
Usando FOR IN
    Log To Console    ${\n}
    FOR    ${FRUTA}    IN    @{lista_de_frutas}
        Log To Console    Minha fruta é: ${FRUTA}!
        No Operation
    END


#Teste de FOR do tipo IN ENUMERATE
Usando FOR IN ENUMERATE
    Log To Console    ${\n}
    FOR    ${INDICE}    ${FRUTA}    IN ENUMERATE   @{lista_de_frutas}
        Log To Console    Minha fruta é: ${INDICE} --> ${FRUTA}!
        No Operation
    END


#Teste de Sair do FOR
Usando FOR IN com EXIT FOR LOOP IF
    Log To Console    ${\n}
    FOR    ${INDICE}    ${FRUTA}    IN ENUMERATE   @{lista_de_frutas}
        Log To Console    Minha fruta é: ${INDICE} --> ${FRUTA}!
        Exit For Loop If    '${FRUTA}'=='morango'
    END    