*** Settings ***
Documentation    Exemplo de tipos de variaveis: SIMPLES, LISTAS e DICIONÁRIOS



*** Variables ***

#global simples
${GLOBAL_SIMPLES}    Este é o valor dentro da variável global simples, de exemplo!

#lista
@{FRUTAS}    morango            
    ...      banana    
    ...      maça    
    ...      uva 
    ...      abacaxi

#dicionario
&{PESSOA}            nome=Gabriel Tavares    email=gstavares99@gmail.com    idade=22    sexo=masculino   




*** Test Cases ***
TC - Exemplo 01
    Keyword de exemplo 01



*** Keywords ***
Keyword de exemplo 01    
#variavel simples
    Log    ${GLOBAL_SIMPLES}


#variavel lista
    Log    Deve aparecer primeiro "maçã": ${FRUTAS[2]} e na sequência, deve aparecer "morango": ${FRUTAS[0]} 


#variavel dicionário
    Log    Nome: ${PESSOA.nome}, e-mail: ${PESSOA.email} e idade: ${PESSOA.idade}
    

