*** Settings ***
Documentation    Aqui neste arquivo estarão presentes todos os tipos de variáveis 
...              que iremos usar ao longo do treinamento.

Library          SeleniumLibrary

Test Setup        Abrir o meu navegador

Test Teardown     Fechar navegador

*** Variables ***
# variável do tipo simples 
${NOME}        Fabi Canedo

# variável do tipo lista
@{FRUTAS}      Uva     Banana     Abacaxi 

# variável do tipo dicionário
&{CARRO_MODELO}         
...        Marca=Nissan
...        Cor=Preto
...     Modelo=Sentra SL
...     Ano=2016

${URL}        https://robotframework.org/     
${BROWSER}    chrome


#representa cenários
*** Test Cases *** 
Validar abertura do Browser
    Abrir o meu navegador
    Fechar navegador

Validar soma de dois números
    [Tags]        SOMA
    Somar dois números    100    200
    Somar o "464" mais o "464"

*** Keywords ***
Abrir o meu navegador
    Open Browser        ${URL}      ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Sleep    5
    Close Browser

# keyword 
#log mostra o resultado no terminal
#argumentos pode ser uma variável ou não
Somar dois números 
    [Arguments]    ${NUM_A}    ${NUM_B}  #declaro que vou somar, abaixo variavel soma, responsavel por somar num_a e num_b aqui representa a soma,#retorna a resposta 
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B} 
    [Return]       ${SOMA}
    Log To Console    ${SOMA} 

Somar o "${NUM_A}" mais o "${NUM_B}"
    ${SOMA}         Evaluate    ${NUM_A}+${NUM_B}
    Log To Console    \n${SOMA} 
