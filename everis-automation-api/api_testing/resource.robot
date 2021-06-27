*** Settings ***
Library    RequestsLibrary
Library    Collections


*** Variables ***
${BASE_URL}      https://httpbin.org/


*** Keywords ***

### TC-02: validar atributo da url endepoint (GET https://httpbin.org/get)

Conecta na API
    Create Session    alias=httpbin    url=${BASE_URL}   disable_warnings=true
    
Requisitar campo url da api
    ${RESPONSE}  Get On Session  alias=httpbin  url=/get
    Log     ${RESPONSE.text}
    Log Many  @{RESPONSE.json()}
    Log   a url é: ${RESPONSE.json()['url']}

Conferir se retorna no campo url é "${RESPONSE.json()['url']}"
    ${RESPONSE}  Get On Session  alias=httpbin  url=/get
    Log     ${RESPONSE.text}
    Log Many  @{RESPONSE.json()}
    Log   a url é: ${RESPONSE.json()['url']}