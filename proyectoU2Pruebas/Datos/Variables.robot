*** Variables ***
#2.checkboxes
${checkbox1}    xpath://div[@class='example']//form[@id='checkboxes']//input[1]
${checkbox2}    xpath://div[@class='example']//form[@id='checkboxes']//input[2]
${checkboxes_url}   https://the-internet.herokuapp.com/checkboxes

#3.Context Menu
${hot-pot}    id=hot-spot
${context_url}  https://the-internet.herokuapp.com/context_menu

# 7. Controles Dinámicos
${URL}           https://the-internet.herokuapp.com/dynamic_controls
${CHECKBOX_ID}   checkbox
${REMOVE_BTN}    css:button[onclick="swapCheckbox()"]
${ENABLE_BTN}    css:button[onclick="swapInput()"]
${INPUT_FIELD}   css:input[type="text"]

# 8. Menú Flotante
${MENU_URL}           https://the-internet.herokuapp.com/floating_menu
${MENU_ITEM}          css:.example #menu a