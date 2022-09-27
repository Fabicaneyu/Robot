*** Settings ***
Documentation    Aqui neste arquivo estarão presentes todos os tipos de variáveis 
...              que iremos usar ao longo do treinamento.

Library          SeleniumLibrary

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


*** Test Cases ***
Validar abertura do Browser
    Abrir o meu navegador
    Fechar Browser

*** Keywords ***
Abrir o meu navegador
    Open Browser        ${URL}      ${BROWSER}
    Maximize Browser Window

Fechar Browser
    Sleep    5
    Close Browser
