*** Settings ***
Library    SeleniumLibrary
Resource    ../Elements/Variables.robot
Resource    ../Keys/Keywords.robot
Resource    ../Asserts/Asserts.robot
Resource    ../Resources/Gherkin.robot
Resource    ../Utils/Timer.robot
Resource    ../Login/Login.robot

*** Keywords ***

#acessar o site
que ao acessar o site
    
    Abrir o site 

#cenario 01
o usuário clicar na seção “E-commerce Bookstore”

    Abrir E-commerce Bookstore

então após validar que houve direcionamento para E-commerce Bookstore o teste será encerrado
    
    Validar direcionamento E-commerce

#cenario 02

clicar sobre o item de menu “Demos”

    Clicar Demos

clicar no sub item “Examples”

    Clicar subitem Examples

clicar sobre o item de menu “Tools”

    Clicar Tools

então o site direciona para Examples
    
    Verificar direcionamento Examples

então após validar que também houve direcionamento para Tools o teste será encerrado

    Validar direcionamento Tools

#cenario 03

clicar sobre a barra de busca
    
    Acessar barra de busca 

digitar um termo de pesquisa

    Pesquisar termo

o usuário clicar sobre o botão “Search”

    Clicar botão “Search”

então após validar que a busca exibiu um retorno o teste será encerrado

    Validar retorno de busca

#cenario 04

na seção “Sample applications for practice test automation” acessar o botão “Try it out” do card “Web inputs”
    
    Acessar o botão “Try it out” do card “Web inputs”

ao direcionar o usuário para o input Number

    Direcionar para input Number

o usuário inserir números

    Inserir números input Number

ao clicar no campo input Text
    
    Clicar campo input Text
   
o usuário inserir um texto

    Inserir um texto no campo

ao clicar no campo input Password

    Clicar campo input Password

o usuário inserir caracteres

    Inserir caracteres

ao clicar no ícone presente campo input Date
    
    Clicar ícone Date

ao selecionar uma data

    Selecionar data

o usuário clicar em Display Inputs
    
    Clicar display inputs

então a funcionalidade apresentará o retorno dos dados inseridos nos campos

    Verificar retorno dados do campo

#cenario 05

ao clicar no card Test Login Page

    Clicar no texto Test Login Page

ao direcionar o usuário para a tela de login
    
    Direcionar ao login

ao inserir um username
    
    Inserir username

ao inserir um password

    Inserir password

o usuário clicar no botão Login
    
    Fazer login

então será exibida uma mensagem de login realizado com sucesso
    
    Verificar mensagem de login sucesso