*** Settings ***
Documentation         This file contains all the resource files.
...                   Import only this file to use all the resources contained in the files below



# Arquivos resource
Resource    BDDpt-BR.robot
Resource    setup.robot
Resource    teardown.robot
Resource    credentials.resource

# Arquivos steps
# Resource    ../objects/login_st.resource
Resource    ../steps/compraspagehome_st.robot

# Arquivos objects
# Resource    ../objects/login_obj.resource
Resource    ../objects/compraspagehome_obj.resource