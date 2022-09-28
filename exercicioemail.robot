*** Settings ***
Documentation        Aqui neste arquivo estaram presentes todos os tipos de 
...                  variáveis que iremos estudar ao longo do treinamento.

Library              SeleniumLibrary

*** Variables ***
&{EMAIL}        
...            Nome=Fabi    
...            Sobrenome=Canedo    
...            Idade=25    
...            Resto=@robot.com


*** Test Cases ***
Validar EMAIL
    [Tags]        EMAIL
    Montar email    fabi    _canedo    _25    @robot.com

*** Keywords ***
Montar email
    [Arguments]    ${Nome}    ${Sobrenome}    ${Idade}    ${Resto}
    ${EMAIL}        Evaluate    ${Nome}${Sobrenome}${Idade}${Resto}
    Log To Console    ${EMAIL}


