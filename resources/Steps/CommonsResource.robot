*** Settings ***
Documentation   Resource para os steps de genéricos e compartilhados
Resource       ../../resources/variables/MappingMobile/MobileMapping.robot
Library        AppiumLibrary

*** Keywords ***

Inicializar Teste e Conectar ao Aparelho
    Open Application    http://localhost:4724/wd/hub 
    ...                 platformName=Android    
    ...                 platformVersion=11.0    
    ...                 deviceName=emulator-5554  
    ...                 appPackage=com.example.myapplication  
    ...                 appActivity=.MainActivity

Abrir navegador
    Open Application     http://localhost:4000/wd/hub
    ...        platform=Android  
    ...        platformName=Android
    ...        platformVersion=11.0   
    ...        deviceName=emulator-5554     
    ...        appPackage=com.android.chrome    
    ...        appActivity=com.google.android.apps.chrome.Main  

Aceitar permições
    Wait Until Page Contains Element    terms_accept
    Click Element     xpath=//*[contains(@resource-id, 'terms_accept') and @text='Aceitar e continuar']
    Wait Until Page Contains Element    positive_button
    Click Element     xpath=//*[contains(@resource-id, 'positive_button')]
    
Fechar Sistema
    Close Application