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
Test Create New Cashier
    Go to   http://clouduatv2.tab2pay.com/th/branch_cashier
    Press Key   select_branch   Head Office
     Click Button   modal_add
     Get Text   cashier_form
     Input Text   cashier_code   003
     Input Text   name   happy
     Input Text   pincode   0987
     Click Button   Create

