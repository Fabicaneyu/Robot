# Robot
My first project using robot framework https://robotframework.org/

## Ferramentas utilizadas:
<br>
:writing_hand: Vscode <br>
:snake: Python <br>
:desktop_computer: Chromedriver <br>
:robot: Robot Framework e Selenium Web Driver <br>
<br>
<br>

## Estrutura do arquivo variables.robot: 
<br>
*** Settings ***
<br>
*** Variables ***
<br>
*** Test Cases ***
<br>
*** Keywords ***
<br>
<br>

## Para rodar o projet, digite no terminal:
<br>
 python -m robot "your file name"
 <br>
 Rodar tags:  robot -i SOMA ./variables.robot ou python -m robot -i SOMA ./variables.robot
 <br>
 robot -i BUSCA webautomation.robot OU python -m robot -i BUSCA webautomation.robot
<br>
 ## Setup e tierdown
 setup = antes do teste: 
 suite setup : o que vai acontecer antes de rodar todos os cenários 
 test setup : o que vai acontecer antes de cada teste da minha suite

 suite teardown = tudo que vai acontecer depois de rodar todos os cenários 
 test teardown = tudo que vai acontecer depois de cada teste da minha suite


 ## Aprender XPATH 
 https://www.macoratti.net/vb_xpath.htm
 Live muito boa explicando sobre XPath e CSS: https://www.youtube.com/watch?v=ZSAglCvKy9g&ab_channel=Iterasys
 <br>
 <br>

 ## Automação 
 kyte.com.br
https://www.saucedemo.com/
http://www.aprendendotestar.com.br/treinar-automacao.php
http://4alltests.com.br/
https://testautomationu.applitools.com/
https://opensource-demo.orangehrmlive.com/
https://woocommerce.com/?aff=43279&cid=8781674
