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
Test branch_product
    Go to   http://clouduatv2.tab2pay.com/th/branch_product

Test Click IMPORT
    Click Element   dropdownMenu1
    Click link   IMPORT DATA
    Get Text   import_modal
    Click Button   ปิด

Test Click excel
    Click Element    dropdownMenu1
    Click link    btn_excel
    Press Key   select_branch   Head Office
