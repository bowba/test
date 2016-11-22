*** Settings ***
Library       Selenium2Library



*** Keywords ***

Searching
    [Arguments]    ${Keywords-Search}
    Input Text     lst-ib  ${Keywords-Search}
    Press Key      lst-ib  \\13

*** Variables ***

*** Test Cases ***
Test Open
     Create Webdriver     Firefox       executable_path=C:\\Users\\BOW-\\Downloads\\Compressed\\geckodriver\\geckodriver.exe
     Go to    http://clouduatv2.tab2pay.com

Test login
    Input Text  login  pkbobb@mailinator.com
    Input Password  password  0828018967
    Click Button  Sign in
Test branch

    GO to    http://clouduatv2.tab2pay.com/th/branch_product

Test
    Click Element   xpath=//a[@class="collapse-link"]

    Input Text   search_product_name    เสื้อยืด
    Input Text   search_product_code    1455
    Press Key   category_inquiry   [03] อาหาร
    Press Key   sub_category_inquiry   [032] อาหารเปียก
    Press Key   type   Normal Item
    Click Button   ส่ง










