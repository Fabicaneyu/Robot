*** Settings ***
Documentation        Aqui neste arquivo estaram presentes todos os tipos de 
...                  variáveis que iremos estudar ao longo do treinamento.

Library              SeleniumLibrary

*** Variables ***
&{EMAIL}        
...            Nome=Fabi    
...            Sobrenome=Canedo    
...            Idade=30    
...            Resto=@robot.com


*** Test Cases ***
Validar soma de dois números
    [Tags]        EMAIL
    Montar email    fabi    _canedo    _30

*** Keywords ***
Montar email
    [Arguments]    ${Nome}    ${Sobrenome}    ${Idade}    ${Resto}
    ${EMAIL}        Evaluate    ${NOME}&${SOBRENOME}&${IDADE}&${RESTO}
    Log To Console    ${EMAIL}


