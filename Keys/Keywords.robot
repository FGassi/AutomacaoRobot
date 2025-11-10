*** Settings ***
Library    SeleniumLibrary
Resource   ../Elements/Variables.robot
Resource    ../Resources/Gherkin.robot
Resource    ../Steps/Steps.robot
Resource    ../Asserts/Asserts.robot

*** Keywords ***
#documentacao selenium https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#library-documentation-top

Abrir o site
    
    Open Browser                                 ${URL}                            chrome

    Maximize Browser Window
    
    Timer low

#cenario 01

Abrir E-commerce Bookstore
    
    SeleniumLibrary.Execute JavaScript           ${ScrollLow}

    Click Element                                ${EcommerceBookstore}
    
    Timer low

#cenario 02

Clicar Demos

    Click Element                                ${Demos}

    Timer low

Clicar subitem Examples

    Click Element                                ${DemosFirstChild}

    Timer low

Clicar Tools

    Click Element                                ${Tools}

    Timer low

#cenario 03

Acessar barra de busca 

    SeleniumLibrary.Execute JavaScript           ${ScrollLow}
    
    Timer low

    Click Element                                ${BarradeBusca}
    
    Timer low

Pesquisar termo

    Input Text                                   ${BarradeBusca}                   Web inputs

    Timer low

Clicar botão “Search”

    Click Element                                ${BotãoSearch}

    Timer low

#cenario 04

Acessar o botão “Try it out” do card “Web inputs”

    Scroll Element Into View                     ${FirstCard}  

    Timer low
    
    SeleniumLibrary.Execute JavaScript           ${ScrollMedium}

    Timer low

    Click Element                                ${PrimeiroBotaoTryout}  

    Timer low

Direcionar para input Number
    
    SeleniumLibrary.Execute JavaScript           ${ScrollHigh} 

    Timer low

Inserir números input Number

    Click Element                                ${InputNumber} 
    
    Timer low

    Input Text                                   ${InputNumber}                    123456

Clicar campo input Text

    Click Element                                ${InputText}   
    
    Timer low

Inserir um texto no campo

    Input Text                                   ${InputText}                      Automação

    Timer low

Clicar campo input Password
    
    Click Element                                ${InputPassword}   
    
    Timer low

Inserir caracteres

    Input Text                                   ${InputPassword}                  Automação

    Timer low

Clicar ícone Date
    
    Click Element                                ${InputDate}   
    
    Timer low

Selecionar data
    
    Input Text                                   ${InputDate}                      04-11-2025

Clicar display inputs
    
    Scroll Element Into View                     ${DisplayInputs}  
    
    Timer low
    
    Click Element                                ${DisplayInputs}   
    
    Timer low

#cenario 05

Clicar no texto Test Login Page

    SeleniumLibrary.Execute JavaScript           ${ScrollMedium}

    Timer low
    
    Click Element                                ${TestLoginPage}

    Timer low

Direcionar ao login

    SeleniumLibrary.Execute JavaScript           ${ScrollMedium}

    Timer low

Fazer login

    Click Element                                ${BotaoLogin}  