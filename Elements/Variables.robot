*** Variables ***

#Endereço Site
${URL}                       https://practice.expandtesting.com/

#Cenario 01
${EcommerceBookstore}        xpath=/html/body/main/div[3]/div[2]/div/div/div[2]/div/div/span[1]
${TituloBookstore}           xpath=/html/body/main/div[3]/div[2]/div/div/h1

#Cenario 02
${Demos}                     xpath=/html/body/header/nav/div/ul[1]/li[1]/a
${DemosFirstChild}           xpath=/html/body/header/nav/div/ul[1]/li[1]/ul/li[1]
${IdExamples}                id=examples
${Tools}                     xpath=/html/body/header/nav/div/ul[1]/li[2]
${IdTools}                   id=tools

#Cenario 03
${ScrollLow}                 window.scrollBy(0, 350)
${BarradeBusca}              xpath=/html/body/main/div[3]/div[2]/div/div/div[1]/div[2]/div/div/div/input
${BotãoSearch}               xpath=/html/body/main/div[3]/div[2]/div/div/div[1]/div[2]/div/div/div/button

#Cenario 04
${ScrollMedium}              window.scrollBy(0, 400)
${ScrollHigh}                window.scrollBy(0, 420)
${FirstCard}                 xpath=/html/body/main/div[3]/div[2]/div/div/div[3]/section[1]/div[1]/div[1]/div  
${PrimeiroBotaoTryout}       xpath=//*[@id="examples"]/div[1]/div[1]/div/div[2]/div/a
${InputNumber}               xpath=/html/body/main/div[3]/div[2]/div[1]/div/div[2]/div[1]/div[1]/div/input
${InputText}                 xpath=/html/body/main/div[3]/div[2]/div[1]/div/div[2]/div[1]/div[2]/div/input
${InputPassword}             xpath=/html/body/main/div[3]/div[2]/div[1]/div/div[2]/div[1]/div[3]/div/input
${InputDate}                 xpath=/html/body/main/div[3]/div[2]/div[1]/div/div[2]/div[1]/div[4]/div/input
${DisplayInputs}             xpath=/html/body/main/div[3]/div[2]/div[1]/div/div[1]/div/button[1]
${Results}                   id=result
${NumberResult}              xpath=/html/body/main/div[3]/div[2]/div[1]/div/div[2]/div[2]/div[1]/div/strong

#Cenario 05
${TestLoginPage}             css=a[href="/login"]
${InputUsuario}              id=username   
${InputSenha}                id=password   
${BotaoLogin}                xpath=/html/body/main/div[3]/div[2]/div/div[1]/div[2]/div/div/div/form/button
${MensagemSucesso}           xpath=/html/body/main/div[2]/div/div/div/b
${ClasseMensagemSucesso}     xpath=//div[contains(@class,'alert-success')]