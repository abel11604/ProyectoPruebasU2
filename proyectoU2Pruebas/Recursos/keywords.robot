*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
# 7. Controles Dinámicos
Abrir página Controles Dinámicos
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Clic en el botón Remove
    Click Button    ${REMOVE_BTN}

Validar checkbox no visible
    Element Should Not Be Visible    ${CHECKBOX_ID}

Clic en el botón Enable
    Click Button    ${ENABLE_BTN}

Validar campo de entrada habilitado
    Element Should Be Enabled    ${INPUT_FIELD}


# 8. Menú Flotante
Abrir página Menú Flotante
    Open Browser    ${MENU_URL}    chrome
    Maximize Browser Window

Desplazar al fondo
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight);

Validar opciones visibles
    Element Should Be Visible    ${MENU_ITEM}
