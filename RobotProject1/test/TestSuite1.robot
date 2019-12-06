*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    I am inside Test suite setup    
Suite Teardown    Log    I am inside Test suite teardown 
Test Setup    Log    I am inside Test suite setup 
Test Teardown    Log    I am inside Test suite teardown 
Default Tags    sanity
*** Test Cases ***
Firsttest
   [Tags]  smoke  
    Log    hello world...    

Secondtest
    Log    hello world...
    Set Tags    regression1
    Remove Tags    regression1
Thirdtest
    Log    hello world...  
#FirstSeleniumTest
 #   Open Browser    https://google.com  chrome  
 #   Set Browser Implicit Wait    5
  #  Input Text     name=q   Automation step by step
   # Press Keys    name=q  ENTER 
    #Click Button    name=btnK
 #   Sleep    2     
 #   Close Browser
  #Log    test completed    
     
#SampleLoginTest
 #   [Documentation]    this is a sample login test  
  #  Open Browser     ${URL}   chrome
   # Set Browser Implicit Wait    5
    #LoginKW
    #Click Element    id=welcome  
    #Click Element    link=Logout     
    #Close Browser   
    #Log    Test Completed    
    #log    this test was executed by %{username} on %{os}
    
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com
@{CREDENIALS}    Admin   admin123   
&{LOGINDATA}   username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENIALS}[0]
    Input Password    id=txtPassword   &{LOGINDATA}[password]
    Click Button    id=btnLogin
