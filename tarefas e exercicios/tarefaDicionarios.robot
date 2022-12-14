*** Settings ***   
Documentation    Tarefa 4: Vamos praticar com DICIONARIOS!

*** Variables ***

&{meses_e_dias}    Janeiro=31
    ...            Fevereiro=28
    ...            Março=31  
    ...            Abril=30
    ...            Maio=31
    ...            Junho=30  
    ...            Julho=31
    ...            Agosto=31
    ...            Setembro=30
    ...            Outubro=31
    ...            Novembro=30
    ...            Dezembro=31


*** Test Cases ***
Test Case - Exercicio Tarefa 4
    tarefa 4




*** Keywords ***

tarefa 4
    Log To Console      O mês de Janeiro possui ${meses_e_dias.Janeiro} dias!
    Log To Console      O mês de Fevereiro possui ${meses_e_dias.Fevereiro} dias!
    Log To Console      O mês de Março possui ${meses_e_dias.Março} dias!
    Log To Console      O mês de Abril possui ${meses_e_dias.Abril} dias!
    Log To Console      O mês de Maio possui ${meses_e_dias.Maio} dias!
    Log To Console      O mês de Junho possui ${meses_e_dias.Junho} dias!
    Log To Console      O mês de Julho possui ${meses_e_dias.Julho} dias!
    Log To Console      O mês de Agosto possui ${meses_e_dias.Agosto} dias!
    Log To Console      O mês de Setembro possui ${meses_e_dias.Setembro} dias!
    Log To Console      O mês de Outubro possui ${meses_e_dias.Outubro} dias!
    Log To Console      O mês de Novembro possui ${meses_e_dias.Novembro} dias!
    Log To Console      O mês de Dezembro possui ${meses_e_dias.Dezembro} dias!