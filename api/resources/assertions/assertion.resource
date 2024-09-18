*** Settings ***
Documentation
...    Assertions que podem ser reutilizadas em quaisquer testes.
Resource    ../../resources/base.resource

*** Keywords ***   
valida o status code de resposta
    [Documentation]
    ...    Recebe como argumento dois valores:
    ...    O primeiro é o status code esperado. Ex: 200, 400, 404.
    ...    O segundo argumento é o response contendo o status code de resposta da aplicação.
    ...    A keyword compara os dois valores esperando que sejam iguais.
    [Arguments]    ${status_code_esperado}    ${response_da_operacao}

    Status Should Be    ${status_code_esperado}    ${response_da_operacao}


valida a mensagem de erro gerada
    [Documentation]
    ...    Recebe como argumento dois valores:
    ...    O primeiro é a mensagem de erro esperada.
    ...    O segundo argumento é o response da operação contendo a mensagem de erro de resposta da aplicação.
    ...    A keyword compara os dois valores esperando que sejam iguais.
    [Arguments]    ${mensagem_esperada}    ${response_da_operacao}

    Should Be Equal    ${mensagem_esperada}    ${response_da_operacao['errors'][0]}
