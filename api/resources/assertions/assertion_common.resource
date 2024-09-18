*** Settings ***
Documentation
...    Assertions que podem ser reutilizadas em quaisquer testes.
Resource    ../../resources/base.resource

*** Keywords ***   
devo validar o status code de resposta
    [Documentation]
    ...    Recebe como argumento dois valores:
    ...    O primeiro é o status code esperado. Ex: 200, 400, 404.
    ...    O segundo argumento é o response contendo o status code de resposta da aplicação.
    ...    A keyword compara os dois valores esperando que sejam iguais.
    [Arguments]    ${status_code_esperado}    ${response_da_operacao}

    Status Should Be    ${status_code_esperado}    ${response_da_operacao}
