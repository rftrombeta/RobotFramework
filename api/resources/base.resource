***Settings***
Documentation    Arquivo que implementa a estrutura inicial do projeto de teste

Library    FakerLibrary    locale=pt_BR
Library    RequestsLibrary

#Lib Própria
# Library    minha_lib.function_package

# Resource actions/
Resource    actions/action.resource
Resource    actions/serverest.dev/usuarios/gherkin_usuarios.resource

#Resource Assertions
Resource    assertions/assertion_common.resource
Resource    assertions/serverest.dev/usuarios/usuarios.resource
