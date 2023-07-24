*** Settings ***
Documentation   Resource para os steps de Mobile
Resource        ../../Steps/CommonsResource.robot
Resource        ../../../resources/variables/Mapping.robot

*** Keywords ***

#---DADO---
Dado que abro o navegador 
    Abrir navegador
    Aceitar permições
    Sleep   5

#---Quando---
Quando acesso a site da amazon
    Click Element     xpath=//*[contains(@resource-id, 'survey_container')]
