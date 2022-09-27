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