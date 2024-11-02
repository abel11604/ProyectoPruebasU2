*** Settings ***
# 7. Controles Dinámicos
Resource          ../Datos/Variables.robot
Resource          ../Recursos/keywords.robot
Library           SeleniumLibrary
Test Teardown   close browser

*** Test Cases ***
Case 7 Controles Dinámicos
    Abrir página Controles Dinámicos
    sleep   2s
    Clic en el botón Remove
    sleep   7s
    Validar checkbox no visible
    sleep   2s
    Clic en el botón Enable
    sleep   7s
    Validar campo de entrada habilitado
    close browser

Case 8 Menú Flotante
    Abrir página Menú Flotante
    sleep   2s
    Desplazar al fondo
    sleep    3s
    Validar opciones visibles
    close browser