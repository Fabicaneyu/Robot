Quando pesquisar por MUG
    Input Text    xpath=//input[@placeholder="Busca" and @type="search"]    Mug
    Click Element    xpath=//input[@type="submit" and @value="Busca"]

Então o Mug deve ser apresentado com sucesso
        Wait Until Page Contains    Resultados da busca por 'Mug'
        Page Should Contain Image    xpath=//img[@src='/spree/products/27/small/ror_mug.jpeg?1552494901']
        Sleep    5