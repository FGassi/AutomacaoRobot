*** Settings ***
Documentation    Desafio 03 - Prática de automação de cenários
...                        
...              Objetivo: Utilizar o Robot Framework como ferramenta de automação dos cenários elaborados para o desafio 03
...
...              Site de referência: https://practice.expandtesting.com/
...
...              Autor: Felipe Gassi
...    

#Conexão com outras pastas
Resource    Steps/Steps.robot

*** Test Cases ***

Cenario 01: Validar que o site direciona para a seção de e-commerce Bookstore

    [Tags]  Cenario_01

    Dado que ao acessar o site
	Quando o usuário clicar na seção “E-commerce Bookstore”
	E então após validar que houve direcionamento para E-commerce Bookstore o teste será encerrado

Cenario 02: Validar que alguns links de menu estão funcionais

    [Tags]  Cenario_02

    Dado que ao acessar o site
	Quando clicar sobre o item de menu “Demos”
	E clicar no sub item “Examples”
	E então o site direciona para Examples
	Quando clicar sobre o item de menu “Tools”
	E então após validar que também houve direcionamento para Tools o teste será encerrado

Cenário 03: Validar que a barra de busca está funcional

    [Tags]  Cenario_03

    Dado que ao acessar o site
	E clicar sobre a barra de busca
	E digitar um termo de pesquisa
	Quando o usuário clicar sobre o botão “Search”
	E então após validar que a busca exibiu um retorno o teste será encerrado

Cenário 04: Validar que ao clicar no botão referente a um card e inserir dados na funcionalidade, os dados são apresentados na tela

    [Tags]  Cenario_04

	Dado que ao acessar o site
	E na seção “Sample applications for practice test automation” acessar o botão “Try it out” do card “Web inputs”
	E ao direcionar o usuário para o input Number
	E o usuário inserir números
	E ao clicar no campo input Text
	E o usuário inserir um texto
	E ao clicar no campo input Password
	E o usuário inserir caracteres
	E ao clicar no ícone presente campo input Date
	E ao selecionar uma data
	Quando o usuário clicar em Display Inputs
	E então a funcionalidade apresentará o retorno dos dados inseridos nos campos

Cenário 05: Validar que ao realizar login, uma mensagem de sucesso é exibida

    [Tags]  Cenario_05

	Dado que ao acessar o site
	E ao clicar no card Test Login Page 
	E ao direcionar o usuário para a tela de login
	E ao inserir um username
	E ao inserir um password
	Quando o usuário clicar no botão Login
	E então será exibida uma mensagem de login realizado com sucesso
