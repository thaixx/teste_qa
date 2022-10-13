*** Settings ***
Documentation     Arquivo principal do projeto 

Library        Browser

Resource        pages/login.resource
Resource        pages/dash.resource

*** Keywords ***
Do Login
    Go to Login Page
    Submit credentials        papito@gmail.com        vaibrasil
    User logged in

Start test
    New Browser        headless=False

Finish test
    Take Screenshot
