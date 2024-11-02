*** Settings ***
# 7. Controles Dinámicos
Resource          ../Datos/Variables.robot
Resource          ../Recursos/keywords.robot
Library           SeleniumLibrary
Test Teardown   close browser

*** Test Cases ***

Case 2 Checkboxes
    Abrir pagina Checkboxes
    Esperar checkbox
    click element    ${checkbox1}
    Checkbox Should Be Selected    ${checkbox1}
    click element   ${checkbox2}
    sleep    1s
    click element   ${checkbox2}
    sleep    1s
    Checkbox Should Be Selected      ${checkbox2}
    sleep    1s
Case 3 Context Menu
    Abrir pagina context
    Esperar hot-pot
    Open Context Menu   ${hot-pot}
    sleep    1s
    Alert Should Be Present    You selected a context menu
    sleep    1s

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
