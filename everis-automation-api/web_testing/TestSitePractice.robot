*** Settings ***
Documentation    Site: http://automationpractice.com/index.php?
Resource         resource.robot

*** Test Cases ***
Caso de Teste: Pesquisar produto existente
    [Tags]  smoke_tests
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    # Conferir se o produto "Blouse" foi listado no site
    Conferir se o produto foi listado no site     Blouse