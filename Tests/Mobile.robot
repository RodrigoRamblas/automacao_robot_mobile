*** Settings ***

Documentation   Testes dedicados automação mobile
Resource        ../resources/Steps/MobileResource/MobileResource.robot
Suite Setup     Abrir navegador 
Test Teardown   #Sair da tela de papel para tela principal
Suite Teardown  Fechar Sistema
Library         AppiumLibrary

*** Test Cases ***

CT01: Pesquisar iphone 14 no site da amazon
    [Documentation]  CT01
    [Tags]  CT01
    Dado que abro o navegador
    Quando acesso a site da amazon
    E pesquiso iphone 14
    Então valido a pesquisa do iphone