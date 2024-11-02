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

Case 5 Elemento que desaparece
    Abrir pagina elementos que desaparecen
    WHILE    ${boton_visible} == False
        Reload Page
        Sleep    1s
        ${boton_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${boton_gallery}
    END
    Element Should Be Visible    ${boton_gallery}
    WHILE    ${boton_visible} == True
        Reload Page
        Sleep    1s
        ${boton_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${boton_gallery}
    END
    Element Should Not Be Visible    ${boton_gallery}

Case 6 Drag and Drop
    Abrir pagina Drag and drop
    sleep   2s
    Drag And Drop    ${caja_a}    ${caja_b}
    sleep   2s
    Element Text Should Be    ${caja_a}    B
    Element Text Should Be    ${caja_b}    A
    sleep   2s
    Drag And Drop    ${caja_b}    ${caja_a}
    sleep   2s
    Element Text Should Be    ${caja_a}    A
    Element Text Should Be    ${caja_b}    B
    close browser

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
