*** Settings ***
Documentation
...         Keywords responsáveis para executar ações de usuários.
Resource    ../../../../resources/base.resource

*** Keywords ***
que eu possua dados para cadastrar um novo usuário
    [Documentation]    Retorna dados válidos para cadastro de usuário

    ${nome}    FakerLibrary.Name
    ${email}    FakerLibrary.Email
    ${password}    FakerLibrary.Password
    
    RETURN    ${nome}    ${email}    ${password}


solicitar o cadastro de usuário
    [Documentation]    Realiza o envio da requisição para cadastro de usuário
    [Arguments]    ${nome}    ${email}    ${password}    ${administrador}

    ${apiurl}=    Set Variable    https://serverest.dev/#

    # Criando Cessão
    Create Session     cadastroDeUsuarios    ${apiurl}

    &{body}    Create Dictionary    nome=${nome}    email=${email}    password=${password}    administrador=${administrador}

    # Request do metodo GET
    ${response}=    POST On Session    cadastroDeUsuarios
    ...    url=/usuarios
    ...    json=${body}
    
    RETURN    ${response}    ${response.json()}

eu consultar os usuários cadastrados
    [Documentation]    Keyword responsável por enviar uma requisição para obter autenticação.

    # URL Padrão
    ${apiurl}=    Set Variable    https://serverest.dev/#

    # Criando Cessão
    Create Session     usuarios    ${apiurl}

    # Request do metodo GET
    ${response}=    GET On Session    usuarios
    ...    url=/usuarios

    RETURN    ${response}
