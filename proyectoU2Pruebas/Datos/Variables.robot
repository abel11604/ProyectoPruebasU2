*** Variables ***
#1 Quitar/Agregar elementos
${caso1_url}    https://the-internet.herokuapp.com/add_remove_elements/
${add_button}   xpath://div[@class='example']/button
${added_button}     xpath://div[@id='elements']/button[@class='added-manually']

#2 iniciar sesion
${caso2_url}    https://the-internet.herokuapp.com/basic_auth
${user_valido}  admin
${user_valido}    admin
${user_invalido}  admin1
${user_invalido}    admin1


#3.checkboxes
${checkbox1}    xpath://div[@class='example']//form[@id='checkboxes']//input[1]
${checkbox2}    xpath://div[@class='example']//form[@id='checkboxes']//input[2]
${checkboxes_url}   https://the-internet.herokuapp.com/checkboxes

#4.Context Menu
${hot-pot}    id=hot-spot
${context_url}  https://the-internet.herokuapp.com/context_menu

#5 Elementos que desaparecen
${disappearing_elements_url}    https://the-internet.herokuapp.com/disappearing_elements
${boton_gallery}                xpath://a[text()='Gallery']
${boton_visible} =    ${False}
${boton_visible}=    ${True}

#6 Drag and drop
${drag_and_drop_url}    https://the-internet.herokuapp.com/drag_and_drop
${caja_a}               id=column-a
${caja_b}               id=column-b

# 7. Controles Dinámicos
${URL}           https://the-internet.herokuapp.com/dynamic_controls
${CHECKBOX_ID}   checkbox
${REMOVE_BTN}    css:button[onclick="swapCheckbox()"]
${ENABLE_BTN}    css:button[onclick="swapInput()"]
${INPUT_FIELD}   css:input[type="text"]

# 8. Menú Flotante
${MENU_URL}           https://the-internet.herokuapp.com/floating_menu
${MENU_ITEM}          css:.example #menu a
