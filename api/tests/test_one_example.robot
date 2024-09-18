Language: ptbr
*** Settings ***
Name       MÉTODO(DELETE,GET,POST,PUT) -> /API/APPLICATION-NAME
Documentation
...    *APPLICATION-NAME - PATH*
...   - application-name tem o objetivo de ...
...   - Ambiente: ``${env}``
...   - Link para o Swagger da application-name - https://application-name/swagger/index.html
Resource    ../resources/base.resource

*** Test Cases ***
001 - Consulta todos os dados da application-name
    [Documentation]
    ...    Autor: Rodrigo Trombeta
    ...    Data Criação: 18/09/2024
    ...    
    ...    Cenário responsável por consultar todos os dados da application-name
    [Tags]    001    application-name    regression-test    smoke-test

    ${parametro_retorno}    Dado que eu consulte todos os dados da application-name

    Quando valido o status code de resposta    200    ${parametro_retorno.status_code}
  
    Então verifico se o payload de resposta não veio vazio    ${parametro_retorno.content}
