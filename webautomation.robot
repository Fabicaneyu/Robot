*** Settings ***
Documentation        Aqui neste arquivo estaram presentes todos os tipos de 
...                  variáveis que iremos estudar ao longo do treinamento.

Library              SeleniumLibrary

Test Setup           Abrir o meu navegador
Test Teardown        Fechar navegador


*** Variables ***
${URL}         https://learningprime.com.br/
${BROWSER}     chrome


*** Test Cases ***
Cenario: Buscando um roupa
    [Tags]    BUSCA
    Dado que eu esteja na tela Home do site
    Quando pesquisar o produto 
    Então o produto deve ser apresentado com sucesso

Cenario: Buscar Mug com sucesso
    [Tags]    BUSCA
    Dado que eu esteja na tela Home do site
    Quando pesquisar por Mug
    Então o Mug deve ser apresentado com sucesso


*** Keywords ***

Quando pesquisar por Mug
    Input Text    xpath=//input[@placeholder="Busca" and @type="search"]    Mug
    Click Element    xpath=//*[@type="submit" and @value="Busca"]

Então o Mug deve ser apresentado com sucesso
    Wait Until Page Contains     Resultados de busca por 'Mug'
    Page Should Contain Image    xpath=//img[@src='/spree/products/27/small/ror_mug.jpeg?1552494901']
    Sleep    5


Dado que eu esteja na tela Home do site
    Title Should Be   Learning Prime Store
    Wait Until Element Is Visible    xpath=//*[contains(text(), "Comprar por Categories")]        5
    
#click button apenas se no html ele for um buton 
Quando pesquisar o produto 
    Input Text    xpath=//input[@placeholder="Busca" and @type="search"]    Bag
    Click Element    xpath=//*[@type="submit" and @value="Busca"]

#validações de texto a keyword vai ter page contains
#validação de elemento terá visible e is not visible
Então o produto deve ser apresentado com sucesso
    Wait Until Page Contains     Resultados de busca por "Bag"
    Page Should Contain Image    xpath=//img[@src=https://learningprime.com.br/spree/products/23/small/ror_bag.jpeg?1552494900]
    Sleep    5

#cria um timeout padrão
Abrir o meu navegador
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    10
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser