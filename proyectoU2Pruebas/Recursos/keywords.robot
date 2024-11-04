*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
#1. Quitar/AgregarElementos
Abrir pagina elementos
    Open Browser    ${caso1_url}  chrome
    Maximize Browser Window

Dar click
    [Arguments]    ${veces}    ${clickear}
    FOR    ${i}    IN RANGE    ${veces}
        Click Element    ${clickear}
        Sleep    500ms
    END

Verificar cantidad botones
    [Arguments]    ${boton}    ${cantidad}
    ${Botones}=     Get Element Count   ${boton}
    Should Be Equal as Integers                 ${Botones}  ${cantidad}

#2. iniciar sesion
Abrir pagina autentificacion
    Open Browser    ${caso2_url}    chrome
    Maximize Browser Window

login pop up
  [Arguments]    ${username}    ${password}
    Execute JavaScript    window.location.href = 'https://${username}:${password}@the-internet.herokuapp.com/basic_auth'

#3. checkboxes
Abrir pagina Checkboxes
    Open Browser    ${checkboxes_url}    chrome
    Maximize Browser Window

Esperar checkbox
    wait until element is enabled      ${checkbox1}
    sleep    1s
#4. Context Menu
Abrir pagina context
    Open Browser    ${context_url}  chrome
    Maximize Browser Window

Esperar hot-pot
    wait until element is enabled     ${hot-pot}
    sleep    1s


# 5. Elementos que desaparecen
Abrir pagina elementos que desaparecen
    open browser    ${disappearing_elements_url}    chrome
    maximize browser window

#6. Drag and drop
Abrir pagina Drag and drop
    open browser    ${drag_and_drop_url}    chrome
    maximize browser window

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

# 9. Autenticacion con formulario
Input Username and Password
    [Arguments]    ${username}    ${password}
    Input Text    id=username    ${username}
    Input Text    id=password    ${password}
    Click Button    xpath=//button[@type="submit"]

Validate Login Success
    Wait Until Element Contains    class:flash.success    ${LOGIN_SUCCESS_MESSAGE}

Click Logout
    Click Element    xpath=//a[@href='/logout']

Validate Logout Success
    Wait Until Element Contains    class:flash.success    You logged out of the secure area!

Validate Error Message
    [Arguments]    ${expected_message}
    Wait Until Element Contains    class:flash.error    ${expected_message}

# 10. Teclas presionadas

Validate Key Press
    [Arguments]    ${expected_message}
    Wait Until Element Contains    id=result    ${expected_message}

