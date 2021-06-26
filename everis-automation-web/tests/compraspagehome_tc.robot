*** Settings ***
Documentation          Funcionalidade: Compras PG Home
Resource               ../resource/main.resource
Test Setup             Abrir Navegador
Test Teardown          Fechar Navegador

*** Variable ***

*** Test Case ***

TC-01: LOGIN - VALIDAR DADOS DE ACESSO
  [Tags]    STRESS_Tests
  Dado  que esteja no site na pagina home
  E  no Topo site clique no botão Sign in
  E  no campo grid Email insira email válido 
  E  no campo drid senha insira senha válida 
  E  clique no botão Sign in
  quando  clicado no botão Sign in não deve aparecer alerta erro login
  Então  deverá ser exibido a tela do usuario logado

TC-02: COMPRAR - 01 ITEM | USER LOGADO | VALIDAR TOTAL COMPRA
  [Tags]    SMOKE_Tests
  Dado  que esteja logado no site na pagina home
  E  navegue até campo Popular
  E  escolha algum item disponivel clique no botão Add to cart
  quando  na tela resumo compra valide campo Total products
  E  clique no botão Proceed to checkout
  E  tela SHOPPING-CART SUMMARY será exibida com sucesso
  E  verifique valor campo Unit price é mesmo valor Total products
  E  com valores validados clique no botão Proceed to checkout
  E  na tela ADDRESSES clique no botão Proceed to checkout
  E  na tela SHIPPING aceite o Terms of service
  E  clique no botão Proceed to checkout2
  Então  será exibido a tela PLEASE CHOOSE YOUR PAYMENT METHOD

