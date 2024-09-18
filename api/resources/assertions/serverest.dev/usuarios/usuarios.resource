*** Settings ***
Documentation
...    Assertions que podem ser reutilizadas em quaisquer testes.
Resource    ../../../../resources/base.resource

*** Keywords ***   
devo validar a mensagem
    [Documentation]
    ...    Recebe como argumento dois valores:
    ...    O primeiro é a mensagem esperada.
    ...    O segundo argumento é a mensagem retornada no response de resposta da aplicação.
    ...    A keyword compara os dois valores esperando que sejam iguais.
    [Arguments]    ${mensagem_esperada}    ${mensagem_response}

    Should Be Equal    ${mensagem_esperada}    ${mensagem_response}


devo validar se o campo _id não retornou nulo
    [Documentation]
    ...    Recebe como argumento o _id que foi recuperado através do response da requisição.
    ...    A keyword verifica se o campo não está nulo.
    [Arguments]    ${_id}

    Should Not Be Empty    ${_id}
