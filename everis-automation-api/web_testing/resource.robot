*** Settings ***
Documentation    Arquivo de implementação dos testes
Library          SeleniumLibrary
Library          String


*** Variables ***
${BROWSER}       chrome
${URL}           http://automationpractice.com/index.php?
${TIMEOUT}       10
${CAMPO_PESQUISA}   id=search_query_top
${BOTAO_PESQUISAR}  name=submit_search     
${TITULO_PRODUTO}   xpath=(//a[@class='product-name'][contains(.,'Produto')])[2]


*** Keywords ***
Acessar a página home do site Automation Practice
    [Documentation]  Essa KW não faz nada!
    Open Browser     url=${URL}  browser=${BROWSER}  options=add_argument("--start-maximized")
    Title Should Be  My Store

Digitar o nome do produto "${produto}" no campo de pesquisa
    Wait Until Element Is Visible   ${CAMPO_PESQUISA}   timeout=${TIMEOUT}
    Input Text    ${CAMPO_PESQUISA}    ${produto}

Clicar no botão pesquisar
    Click Button  ${BOTAO_PESQUISAR}

# Conferir se o produto "${PRODUTO}" foi listado no site
    # ${LOCATOR}   Replace String    ${TITULO_PRODUTO}  Produto  ${PRODUTO}
    # Wait Until Element Is Visible  ${LOCATOR}

Conferir se o produto foi listado no site
    [Arguments]  ${PRODUTO}
    ${LOCATOR}   Replace String    ${TITULO_PRODUTO}  Produto  ${PRODUTO}
    Wait Until Element Is Visible  ${LOCATOR}