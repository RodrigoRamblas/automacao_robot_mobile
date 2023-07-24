*** Settings ***
Documentation   Resource para os steps de genéricos e compartilhados
Resource       ../../resources/variables/MappingMobile/MobileMapping.robot
Library        AppiumLibrary

*** Keywords ***

Inicializar Teste e Conectar ao Aparelho
    Open Application    http://127.0.0.1:4723/wd/hub 
    ...                 platformName=Android    
    ...                 platformVersion=13.0    
    ...                 deviceName=emulator-5554  
    ...                 appPackage=com.example.myapplication  
    ...                 appActivity=.MainActivity

Abrir navegador
    Open Application    http://localhost:4723/wd/hub
    ...        platform=Android  
    ...        platformName=Android
    ...        platformVersion=13.0   
    ...        deviceName=emulator-5554     
    ...        appPackage=com.android.chrome    
    ...        appActivity=com.google.android.apps.chrome.Main  

Aceitar permições
    Click Element     xpath=//*[contains(@resource-id, 'terms_accept') and @text='Aceitar e continuar']
    #Click Element    ${TELA_MOBILE.botão_Aceitar_e_Continuar}
    Click Element     xpath=//*[contains(@resource-id, 'positive_button')]

    