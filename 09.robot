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
Test customer create
    Go to    http://clouduatv2.tab2pay.com/th/customer
    # Click Element   xpath=//a[@class="btn btn-success create-customer-btn top_menu"]

Test
   Go to   http://clouduatv2.tab2pay.com/th/customer/create

    Input Text    customer_code    444444
    Input Text    customer_barcode    234556
    Input Text    first_name    Nana
    Input Text    last_name    vava
    Input Text    id_card    1234876543232
    Input Text    passport    123432123
    Input Text    address     44
    Input Text     city      เมือง
    Input Text     province    กทม
    Input Text     postalcode   10310
    Press Key      country     136
    Input Text     phone_no    0912345693
    Input Text     email       nana@gmail.com
    # Click Button    สร้าง




