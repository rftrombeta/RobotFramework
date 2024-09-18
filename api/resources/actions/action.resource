*** Settings ***
Documentation
...         Keywords que podem ser reutilizadas em quaisquer testes.
Resource    ../../resources/base.resource

*** Keywords ***   
que possua um CNPJ em formato incorreto
    [Documentation]    Keyword responsável por setar um documento em formato inválido.
    [Arguments]    ${type_document}

    ${cnpj}    Set Variable    ${CNPJ_INVALIDO}

    RETURN    ${cnpj}

que possua uma data em formato incorreto
    [Documentation]    Keyword responsável por setar uma data em formato inválido.

    ${data}    Set Variable    2023-009-25

    RETURN    ${data}
