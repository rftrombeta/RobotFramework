Language: ptbr
*** Settings ***
Name       GET -> /USUARIOS
Documentation
...    *SERVEREST.DEV - USUARIOS*
...   - serverest.dev/usuarios tem o objetivo consultar os usuários cadastrados.
...   - Link para o Swagger - https://serverest.dev/#/Usu%C3%A1rios/get_usuarios
Resource    ../../../resources/base.resource

*** Test Cases ***
001 - Consultar usuários cadastrados
    [Documentation]
    ...    Autor: Rodrigo Trombeta
    ...    Data Criação: 18/09/2024
    ...    
    ...    Quando eu consultar os usuários cadastrados
    ...    Então devo validar o status code de resposta 200
    [Tags]    001    application-name    regression-test    smoke-test

    ${response}    Quando eu consultar os usuários cadastrados
    
    Então devo validar o status code de resposta    200    ${response}
