*** Variables ***
${AMAZON_PAGE_HOME_BUTTON}       xpath=//android.widget.ImageView[@content-desc="Home"]
${RFRENCE_PATH}                  xpath=//android.widget.ImageView[@content-desc="amazon.in"]
${SEARCH_BOX}                    xpath=//*[@class='android.widget.EditText']
${TV_NAME_AND_DETAILS}           xpath=(//*[contains(@text,'Sanyo 165 cm (65 inches) Kaizen Series')])[2]
${TV_SEARCH_RESULT}              xpath=//*[contains(@text,'Showing results for 65inches tv')]
${TV_SIZE_AND_NAME}              xpath=//*[contains(@text,'Size name: 65 Inches | 4K')]
${ADD_TO_CART}                   xpath=//*[contains(@text,'Add to Cart')] 
${ITEM_ADDED_TO_CART}            xpath=//*[contains(@text,'Added to cart')]
${CART_BUTTON}                   xpath=(//*[contains(@text,'Cart')])[2]
${PROCEED_TO_BUY_BUTTON}         xpath=//*[contains(@text,'Proceed to Buy')]
${DELIVERY_ADDRESS_BUTTON}       xpath=(//*[contains(@text,'Lemon Tree Hotel, Rajiv Gandhi Infotech Park, Phase 1')])[2]
