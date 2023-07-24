*** Settings ***

Documentation   Testes dedicados automação mobile
Resource        ../resources/Steps/MobileResource/MobileResource.robot
Suite Setup     Inicializar Teste e Conectar ao Aparelho
Test Teardown   #Sair da tela de papel para tela principal
Suite Teardown  #Fechar Sistema
Library         AppiumLibrary

*** Test Cases ***
Open Browser
    [Documentation]    Abrir navegador
    [Tags]  CT01
    Dado que abro o navegador
    Quando acesso a site da amazon