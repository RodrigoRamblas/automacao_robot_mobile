*** Settings ***
Documentation   Resource para os steps de Mobile
Resource        ../../Steps/CommonsResource.robot
Resource        ../../../resources/variables/Mapping.robot

*** Keywords ***

#---DADO---
Dado que abro o navegador 
    Aceitar permições

#---Quando---
Quando acesso a site da amazon
    Acessar o site da amazon

#---E---
E pesquiso iphone 14
    Pesquisar iphone 14

Então valido a pesquisa do iphone
    Validar a pesquisa do iphone

#---STEPS---

Acessar o site da amazon
    Set Appium Timeout    30000
    Wait Until Page Contains Element      com.android.chrome:id/positive_button
    Set Appium Timeout    30000
    Wait Until Page Contains Element      com.android.chrome:id/search_box_text
    Input Text                            com.android.chrome:id/search_box_text    amazon.com.br
    Click Element                         com.android.chrome:id/line_1
    Set Appium Timeout    60000

Pesquisar iphone 14
    Set Appium Timeout    60000
    Wait Until Page Contains Element      xpath=//android.view.View[@content-desc="Limpar palavras-chave da pesquisa"]
    Click Element                         xpath=//android.view.View[@content-desc="Limpar palavras-chave da pesquisa"]
    Input Text                            xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.widget.EditText    iphone 14
    Set Appium Timeout    60000
    Wait Until Page Contains Element      xpath=//android.webkit.WebView/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View[2]/android.view.View/android.view.View[1]
    Click Element                         xpath=//android.webkit.WebView/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View[2]/android.view.View/android.view.View[1]

Validar a pesquisa do iphone
    Wait Until Page Contains Element       xpath=//android.view.View[@text="Apple iPhone14 (128 GB) – (PRODUCT) RED"]
    Page Should Contain Element            xpath=//android.view.View[@text="Apple iPhone14 (128 GB) – (PRODUCT) RED"]