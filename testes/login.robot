*** Settings ***

Documentation        Login testes
Resource        ../resources/main.resource
Test Setup        Start test
Test Teardown     Finish test

*** Variables ***
${email}        papito@gmail.com
${senha}        vaibrasil

*** Test Cases ***

Deve logar com sucesso
    Go to Login Page
    Submit credentials        ${email}            ${senha}
    User logged in
    Sleep            5

Não deve logar com senha incorreta
    [Tags]        inv_pass
    Go to Login Page
    Submit credentials            ${email}            abc123
    Toast Message Should Be        Credenciais inválidas, tente novamente!
    #Thinking Time
    Sleep            1

