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
Test create vendors
    Go to   http://clouduatv2.tab2pay.com/th/vendors
    Click Element   xpath=//a[@id="vendor_create"]

     Get Text   form_create
     Input Text   code  001
     Input Text   name  Dara
     Input Text   contact_name   Dararat
     Input Text   id_card   9876543456321
     Input Text   passport   543456
     Input Text   address    31/1 ม.9 หลักช้าง
     Input Text   city   ช้างกลาง
     Input Text   province   นครศรีธรรมราช
     Input Text   postalcode   80250
     Press Key      country     136
     Input Text   phone_no   0913262965
     Input Text   email   Dara@gmail.com
     # Click Button   สร้าง



