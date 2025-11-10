*** Settings ***
Library    OperatingSystem

#essa técnica define as ações 

*** Keywords ***
Dado ${Keyword}
    Run Keyword    ${Keyword}
Quando ${Keyword}
    Run Keyword    ${Keyword}
E ${Keyword}
    Run Keyword    ${Keyword} 