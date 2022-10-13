*** Settings ***
Documentation    Teste de negociação

Resource            ${EXECDIR}/resources/main.resource

Test Setup        Start test
Test Teardown     Finish test

*** Test Cases ***
Deve negociar a figurinha do Neymar
    Do Login

    Search User               legend
    Select Sticker            Neymar Jr
    Get In Touch
    Whats App Sticker Message    Neymar Jr
    
    Sleep        15
