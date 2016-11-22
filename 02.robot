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
Test Add Customer Type
    Go to   http://clouduatv2.tab2pay.com/th/customer_setting
    Click Element   add_customer_type
    Get Text   customer_type
    Input Text  customer_type  001
    Input Text  customer_type_code  1234567
    Input Text  customer_amount  30
    Input Text  customer_point  1000
    Click Button  Create
