*** Settings ***
Documentation        Login Page

Library        Browser

*** Keywords ***

Go to Login Page
    New Browser            headless=False
    New Page               https://trade-sticker-dev.vercel.app/

Submit credentials
    [Arguments]            ${email}        ${password}
    Fill Text              css=input[name=email]           ${email}
    Fill Text              css=input[name=password]        ${password}
    Click                  css=button >> text=Entrar
Toast Message Should Be
    [Arguments]        ${expected_message}
    ${locator}                Set Variable        css=.Toastify__toast-body div >> text=${expected_message}
    Wait For Elements State    ${locator}            visible        3