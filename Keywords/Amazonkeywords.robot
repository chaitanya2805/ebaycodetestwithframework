*** Settings ***
library    SeleniumLibrary    
library     AppiumLibrary  
Resource    ../Objectrepository/Locators.robot  
Resource    ../Applicationdata/TestData.robot

*** Keywords ***
Open App
     Open Application    ${RemoteURL}     platformName=${platformName}    platformVersion=${platformVersion}    deviceName=${deviceName}   appPackage=${packageName}  appActivity=${ActivityName}  

Go To Amazon Site And Search For Item
    Run Keyword And Ignore Error    AppiumLibrary.Wait Until Element Is Visible  ${RFRENCE_PATH}   ${quickWaitTimeOut}         
    AppiumLibrary.Page Should Contain Element    ${AMAZON_PAGE_HOME_BUTTON}
    AppiumLibrary.Click Element    ${AMAZON_PAGE_HOME_BUTTON}
    AppiumLibrary.Wait Until Element Is Visible   ${SEARCH_BOX} 
    AppiumLibrary.Input Text    ${SEARCH_BOX}    ${tvSize}
    AppiumLibrary.Wait Until Element Is Visible   ${TV_SEARCH_RESULT} 
    Swipe By Percent    546.0    1537.0    546.0    596.0  
    AppiumLibrary.Wait Until Element Is Visible   ${TV_NAME_AND_DETAILS}    
    AppiumLibrary.Click Element    ${TV_NAME_AND_DETAILS}   
    ${textValueOfTv}    AppiumLibrary.Get Text   ${TV_NAME_AND_DETAILS}  
    [Return]   ${textValueOfTv}    
      
 Add Item To Cart   
    AppiumLibrary.Wait Until Element Is Visible   ${TV_SIZE_AND_NAME}   
    Swipe By Percent    510.0    1610.0    512.0    350.0  
    Run Keyword And Ignore Error    AppiumLibrary.Wait Until Element Is Visible  ${RFRENCE_PATH}    ${mediumWaitTimeOut}      
    ${cartStatus}     Run Keyword And Return Status    SeleniumLibrary.Page Should Contain Element    ${ADD_TO_CART}
    Log    ${cartStatus} 
    Run Keyword If     '${cartStatus}'== 'TRUE'     AppiumLibrary.Click Element       ${ADD_TO_CART}
    ...    ELSE   Swipe By Percent    477.0    1588.0    395.0   353.0  2000
     
Go To Cart And Verify The Item Added In The Cart  
    [Arguments]   ${TEXT_VALUE_OF_TV}  
    AppiumLibrary.Wait Until Element Is Visible    ${ITEM_ADDED_TO_CART} 
    AppiumLibrary.Click Element    ${CART_BUTTON}
   ${verifiedvalue}     Run Keyword And Return Status    SeleniumLibrary.Page Should Contain Element     ${TEXT_VALUE_OF_TV}        
    Run Keyword If    '${verifiedvalue}' =='TRUE'   AppiumLibrary.Click Element    ${PROCEED_TO_BUY_BUTTON}    
    ...    ELSE       Exit For Loop
    

Delivery To Selected Address
    AppiumLibrary.Wait Until Element Is Visible    ${DELIVERY_ADDRESS_BUTTON}  
    AppiumLibrary.Click Element    ${DELIVERY_ADDRESS_BUTTON}     
    
      
           
    
       
     
    
    
    


