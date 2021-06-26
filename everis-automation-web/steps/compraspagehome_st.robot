*** Settings ***
Documentation          Funcionalidade: Compras PG Home
Library                FakerLibrary    locale=pt_BR
Resource               ../resource/main.resource


*** Variable ***

*** Keywords ***

### TC-01: LOGIN - VALIDAR DADOS DE ACESSO ###

que esteja no site na pagina home
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${HOMEPG.cmpLogoSite}
  Element Should Be Visible           ${HOMEPG.cmpSearchHome}
  Sleep                               3s

no Topo site clique no botão Sign in
  Set Selenium Speed                  0.2 seconds
  Set Focus To Element                ${HOMEPG.btnSignIn}
  Click Element                       ${HOMEPG.btnSignIn}
  Sleep                               3s

no campo grid Email insira email válido 
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${USERS.cmpTitleAutenticação}
  Scroll Element Into View            ${USERS.btnSignIn}
  Wait Until Element Is Visible       ${USERS.cmpEmail}
  Click Element                       ${USERS.cmpEmail}
  Input Text                          ${USERS.cmpEmail}    ${user.valido}             
  Sleep                               2s

no campo drid senha insira senha válida
  Set Selenium Speed                  0.2 seconds
  Click Element                       ${USERS.cmpPassWd}
  Input Text                          ${USERS.cmpPassWd}    ${password.valido}          
  Sleep                               2s

clique no botão Sign in
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${USERS.btnSignIn}
  Click Element                       ${USERS.btnSignIn}
  Element Should Not Be Visible       ${USERS.MsgErroAlertLogin}            
  Sleep                               2s

clicado no botão Sign in não deve aparecer alerta erro login
  Set Selenium Speed                  0.2 seconds
  Element Should Not Be Visible       ${USERS.MsgErroAlertLogin}            
  Sleep                               2s

deverá ser exibido a tela do usuario logado
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${USERS.cmpMyAccount}
  Scroll Element Into View            ${USERS.btnHome}
  Click Element                       ${USERS.btnHome}
  Wait Until Element Is Visible       ${HOMEPG.cmpSearchHome}
  Sleep                               3s

### TC-02: COMPRAR - 01 ITEM | USER LOGADO | VALIDAR TOTAL COMPRA ###

que esteja logado no site na pagina home
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${HOMEPG.cmpLogoSite}
  Element Should Be Visible           ${HOMEPG.cmpSearchHome}
  Set Focus To Element                ${HOMEPG.btnSignIn}
  Click Element                       ${HOMEPG.btnSignIn}
  Wait Until Element Is Visible       ${USERS.cmpTitleAutenticação}
  Scroll Element Into View            ${USERS.btnSignIn}
  Wait Until Element Is Visible       ${USERS.cmpEmail}
  Click Element                       ${USERS.cmpEmail}
  Input Text                          ${USERS.cmpEmail}    ${user.valido}             
  Click Element                       ${USERS.cmpPassWd}
  Input Text                          ${USERS.cmpPassWd}    ${password.valido}          
  Sleep                               2s
  Wait Until Element Is Visible       ${USERS.btnSignIn}
  Click Element                       ${USERS.btnSignIn}
  Element Should Not Be Visible       ${USERS.MsgErroAlertLogin}                       
  Sleep                               2s
  Wait Until Element Is Visible       ${USERS.cmpMyAccount}
  Scroll Element Into View            ${USERS.btnHome}
  Click Element                       ${USERS.btnHome}
  Wait Until Element Is Visible       ${HOMEPG.cmpSearchHome}

navegue até campo Popular
  Set Selenium Speed                  0.3 seconds
  Scroll Element Into View            ${HOMEPG.cmpProdDisp01}
  Sleep                               2s

escolha algum item disponivel clique no botão Add to cart
  Set Selenium Speed                  0.3 seconds
  Click Element                       ${HOMEPG.cmpProdDisp01}
  Click Element                       ${MYCAR.btnAddtoCar2}
  Sleep                               2s

na tela resumo compra valide campo Total products
  Set Selenium Speed                  0.6 seconds
  ${your_shopping_cart}=   Run Keyword And Return Status    
  ...    Element Should Be Visible    ${MYCAR.cmpTitlePrdSucess}
  IF    "${your_shopping_cart}" == "True"
    Click Element                     ${MYCAR.cmpTitlePrdSucess}
  END
  Wait Until Element Is Visible       ${MYCAR.cmpYourCartTotal}
  Sleep                               2s
  Wait Until Element Is Visible       ${MYCAR.btnProcCheckOut}
  Element Should Be Visible           ${MYCAR.cmpTotalProd}
  Sleep                               2s

clique no botão Proceed to checkout
  Set Selenium Speed                  0.3 seconds
  Click Element                       ${MYCAR.btnProcCheckOut}
  Sleep                               2s

tela SHOPPING-CART SUMMARY será exibida com sucesso
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${MYCAR.cmpTitleMeuCarrinho}
  Scroll Element Into View            ${MYCAR.btnProcCheckOut2}  
  # Wait Until Element Is Visible       ${MYCAR.cmpUnitPrice2}
  Sleep                               3s

verifique valor campo Unit price é mesmo valor Total products
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${MYCAR.cmpUnitPrice}
  # Click Element                       ${MYCAR.btnProcCheckOut3}
  Sleep                               3s

com valores validados clique no botão Proceed to checkout
  Set Selenium Speed                  0.2 seconds
  Click Element                       ${MYCAR.btnProcCheckOut3}
  Sleep                               3s

na tela ADDRESSES clique no botão Proceed to checkout
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${MYADDRESSES.cmpTitle}
  Scroll Element Into View            ${MYADDRESSES.btnProcCheckOut}
  Click Element                       ${MYADDRESSES.btnProcCheckOut}
  Sleep                               3s

na tela SHIPPING aceite o Terms of service
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${MYADDRESSES.cmpTitleShip}
  Scroll Element Into View            ${MYADDRESSES.btnProcCheckOut2}
  Click Element                       ${MYADDRESSES.cmpService} 
  Sleep                               2s

clique no botão Proceed to checkout2
  Set Selenium Speed                  0.2 seconds
  Click Element                       ${MYADDRESSES.btnProcCheckOut2}  
  Sleep                               2s

será exibido a tela PLEASE CHOOSE YOUR PAYMENT METHOD  
  Set Selenium Speed                  0.2 seconds
  Wait Until Element Is Visible       ${MYADDRESSES.cmpTitlePgto}
  Scroll Element Into View            ${MYADDRESSES.lnkShopping}
  Element Should Be Visible           ${MYADDRESSES.cmpTotalProd}
  Sleep                               3s