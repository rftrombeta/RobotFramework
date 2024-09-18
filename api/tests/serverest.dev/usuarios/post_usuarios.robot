Language: ptbr
*** Settings ***
Name       POST -> /USUARIOS
Documentation
...    *SERVEREST.DEV - USUARIOS*
...   - serverest.dev/usuarios tem o objetivo cadastrar os usuários no sistema.
...   - Link para o Swagger - https://serverest.dev/#/Usu%C3%A1rios/post_usuarios
Resource    ../../../resources/base.resource

*** Test Cases ***
001 - Cadastrar um novo usuário normal
    [Documentation]
    ...    Autor: Rodrigo Trombeta
    ...    Data Criação: 18/09/2024
    ...    
    ...    Dado que eu possua dados para cadastrar um novo usuário
    ...    Quando solicitar o cadastro de usuário
    ...    Então devo validar o status code de resposta
    ...    E devo validar a mensagem
    [Tags]    001    serverest.dev    regression-test    smoke-test

    ${nome}    ${email}    ${password}    Dado que eu possua dados para cadastrar um novo usuário
    
    ${response}    ${response_content}    Quando solicitar o cadastro de usuário    ${nome}    ${email}    ${password}    false
    
    Então devo validar o status code de resposta    201    ${response}
    E devo validar a mensagem    Cadastro realizado com sucesso    ${response_content["message"]}
    E devo validar se o campo _id não retornou nulo    ${response_content["_id"]}


002 - Cadastrar um novo usuário administrador
    [Documentation]
    ...    Autor: Rodrigo Trombeta
    ...    Data Criação: 18/09/2024
    ...    
    ...    Dado que eu possua dados para cadastrar um novo usuário
    ...    Quando solicitar o cadastro de usuário
    ...    Então devo validar o status code de resposta
    ...    E devo validar a mensagem
    [Tags]    002    serverest.dev    regression-test    smoke-test

    ${nome}    ${email}    ${password}    Dado que eu possua dados para cadastrar um novo usuário
    
    ${response}    ${response_content}    Quando solicitar o cadastro de usuário    ${nome}    ${email}    ${password}    true
    
    Então devo validar o status code de resposta    201    ${response}
    E devo validar a mensagem    Cadastro realizado com sucesso    ${response_content["message"]}
    E devo validar se o campo _id não retornou nulo    ${response_content["_id"]}