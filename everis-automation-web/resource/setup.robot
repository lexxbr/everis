*** Settings ***

Library           SeleniumLibrary
Resource          ../resource/main.resource

*** Variables ***
${BROWSER}        chrome
${URL}            http://automationpractice.com/

*** Keywords ***
Abrir Navegador
  Open Browser      ${URL}   ${BROWSER}    options=add_argument("--start-maximized")