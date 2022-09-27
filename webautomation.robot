*** Settings ***
Documentation        Aqui neste arquivo estaram presentes todos os tipos de 
...                  variáveis que iremos estudar ao longo do treinamento.

Library              SeleniumLibrary

Test Setup           Abrir o meu navegador
Test Teardown        Fechar navegador


*** Variables ***
${URL}         https://robotframework.org/
${BROWSER}     chrome


*** Test Cases ***
Cenario: Buscando um roupa
    Dado que eu esteja na tela Home do site
    Quando pesquisar o produto 
    Então o produto deve ser apresentado com sucesso


*** Keywords ***
Dado que eu esteja na tela Home do site
    

Quando pesquisar o produto 

Então o produto deve ser apresentado com sucesso

Abrir o meu navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser