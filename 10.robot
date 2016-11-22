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
# Test branch_cashier

#     GO to    http://clouduatv2.tab2pay.com/th/branch_cashier

# Test
#     Click Element   xpath=//a[@class="collapse-link"]


#     Input Text  cash_code  111111
#     Input Text  cash_name  bb
Test branch_cashier

    GO to    http://clouduatv2.tab2pay.com/th/branch_cashier#

Test
    Click Element   xpath=//a[@onclick="confirmDelete(262)]


