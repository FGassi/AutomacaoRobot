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


#Asserts de finalização

#cenario 01

Validar direcionamento E-commerce

    Log To Console                                       Verificando se foi direcionado ao e-commerce bookstore...
    
    SeleniumLibrary.Execute JavaScript                   ${ScrollMedium}

    Timer low

    SeleniumLibrary.Element Text Should Be               ${TituloBookstore}                 Books List

    Log To Console                                       Cenário 01 Passou

    Close Browser

#cenario 02

Verificar direcionamento Examples
 
    Log To Console                                       Verificando se foi direcionado aos exemplos...

    Page Should Contain Element                          ${IdExamples} 
    
    Timer low

    Log To Console                                       Contém o elemento, continuando cenário ...

    Timer low

Validar direcionamento Tools
    
    Log To Console                                       Verificando se foi direcionado corretamente...

    Page Should Contain Element                          ${IdTools}  
    
    Timer low

    Log To Console                                       Cenário 02 Passou

    Timer low

    Close Browser

#cenario 03

Validar retorno de busca
    
    Log To Console                                       Verificando se houve retorno da busca...

    Page Should Not Contain                              No examples found
    
    Timer low

    Log To Console                                       Retorno de busca não vazio

    Timer low

    Log To Console                                       Cenário 03 Passou

    Timer low

    Close Browser


#cenario 04
    
Verificar retorno dados do campo
    
    Log To Console                                       Verificando se o resultado foi exibido...
    
    Timer low

    SeleniumLibrary.Element Should Be Visible            ${Results} 
    
    #evitar falso positivo
    Log To Console                                       Verificando se o campo Number está presente no resultado

    SeleniumLibrary.Element Should Be Visible            ${NumberResult} 
    
    Timer low
    
    Log To Console                                       Resultados exibidos e campo presente

    Log To Console                                       Cenário 04 Passou

    Close Browser

# cenario 05

Verificar mensagem de login sucesso
    
    Log To Console                                       Verificando se o o login foi realizado com sucesso...

    SeleniumLibrary.Element Text Should Be               ${MensagemSucesso}                You logged into a secure area!
    
    Log To Console                                       Verificando se não é uma mensagem falsa...

    Timer low

    #funcao    localizacao   propriedade
    ${classe}=    Get Element Attribute                  ${ClasseMensagemSucesso}    class
    Should Contain                                       ${classe}    alert-success

    Timer low

    Log To Console                                       Dupla verificação concluida!

    Log To Console                                       Cenário 05 Passou

    Close Browser

