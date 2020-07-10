*** Settings ***
Resource    ../Keywords/Amazonkeywords.robot

Test Setup    Open App
Test Teardown    Close Application

*** Test Cases ***

Open Amazon App Select Item Add Item To Cart And Proceed With Payment
   ${textValueOfTv}  Go To Amazon Site And Search For Item
   Add Item To Cart  
   Go To Cart And Verify The Item Added In The Cart    ${textValueOfTv}  
   Delivery To Selected Address