*** Settings ***
Documentation  Documentacao da API: https://httpbin.org/get
Resource       resource.robot
Suite Setup    Conecta na API

*** Test Cases ***
TC-03: validar atributo da url endepoint (GET https://httpbin.org/get)
    Conecta na API
    Requisitar campo url da api
    Conferir se retorna no campo url é "https://httpbin.org/get"