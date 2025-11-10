*** Settings ***
Library    SeleniumLibrary
Resource    ../Elements/Variables.robot
Resource    ../Keys/Keywords.robot
Resource    ../Steps/Steps.robot
Resource    ../Resources/Gherkin.robot
Resource    ../Utils/Timer.robot

#verificações (asserções)
#exemplo:
# Verificar que o login foi bem-sucedido
# Page Should Contain    Bem-vindo.

*** Keywords ***

#cenario 05
Inserir username
    
    Click Element                                ${InputUsuario} 

    Timer low

    Input Text                                   ${InputUsuario}                   practice

    Timer low

Inserir password

    Click Element                                ${InputSenha} 

    Timer low

    Input Text                                   ${InputSenha}                     SuperSecretPassword!

    Timer low                                
