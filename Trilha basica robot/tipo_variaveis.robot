*** Settings ***
Documentation    Demonstração de tipos de variaveis

*** Variables ***
${SIMPLES_STRING}    xxx
${SIMPLES_NUMERICA}    999
${SIMPLES_BOOLEANA}    ${TRUE}

@{LISTA}    cliente01  cliente02  cliente03

&{DICIONARIO}    nome=Cliente 01  email=cliente01@mail.com  idade=30

*** Test Cases ***
Cenario 01: Variavel Simples
    Logar Variavel Simples no Console

Cenario 02: Variavel LISTA
    Logar variavel Lista No Console

Cenario 03: variavel DICIONARIO
    Logar variavel Dicionario No Console

*** Keywords ***
Logar Variavel Simples No Console
    Log To Console    .
    Log To Console    -----------------------
    Log To Console    Variavel Simples
    Log To Console    Sou uma variavel simples, meu conteudo é: ${SIMPLES_STRING}
    Log To Console    Sou uma variavel simples, meu conteudo é: ${SIMPLES_NUMERICA}
    Log To Console    Sou uma variavel simples, meu conteudo é: ${SIMPLES_NUMERICA}
    Log To Console    -----------------------

Logar variavel Lista No Console
    Log To Console    .
    Log To Console    -----------------------
    Log To Console    primeiro cliente:${LISTA}[0]
    Log To Console    segundo cliente:${LISTA}[1]
    Log To Console    terceiro cliente:${LISTA}[2]
    Log To Console    -----------------------

Logar variavel Dicionario No Console
    Log To Console    .
    Log To Console    -----------------------
    Log To Console    Nome do cliente:${DICIONARIO.nome}
    Log To Console    Email do cliente:${DICIONARIO.email}
    Log To Console    Idade do cliente:${DICIONARIO.idade}
    Log To Console    -----------------------