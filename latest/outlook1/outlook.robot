*** Settings ***
Library    SeleniumLibrary  
Library    OperatingSystem     
Library    hello.py            
 
*** Test Cases ***
successful_login
    Append To Environment Variable    Path     ${EXECDIR}${/}driver${/}
    Open Browser    https://outlook.live.com/owa/    browser=chrome 
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    Capture Page Screenshot    ${EXECDIR}${/}screenshot${/}Capture.png
    Wait Until Element Is Visible    //*[text()="Sign in"]
    Click Element    //*[text()="Sign in"]  
    # ${val}    Apr
    # Log To Console    ${val}    
    Capture Page Screenshot   
    Wait Until Element Is Visible    //*[text()="Sign in"]//following::*[contains(@placeholder,"Email")]          
    Input Text    //*[text()="Sign in"]//following::*[contains(@placeholder,"Email")]    prasanna.a@ltts.com    
    Click Element    //*[@value="Next"]
    Wait Until Element Is Visible    //*[text()="Enter password"]//following::*[contains(@placeholder,"Password")]    
    Input Password    //*[text()="Enter password"]//following::*[contains(@placeholder,"Password")]    Psnumber#61217991  
    Click Element    //*[@value="Sign in"]      
    Wait Until Element Is Visible    //*[@value="No"]       30s
    Click Element    //*[@value="No"]     
    # Wait Until Element Is Visible    //body/div[@id='app']/div[1]/div[2]/div[1]/div[1]/div[3]/div[1]/button[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/img[1]    30    
    # Click Element    //body/div[@id='app']/div[1]/div[2]/div[1]/div[1]/div[3]/div[1]/button[1]/div[1]/div[2]    
    Wait Until Element Is Visible    //*[contains(@class,"_2KqWka")]/ancestor::div[contains(@class,"W3SxI")]     
    #Wait Until Element Is Visible    //body/div[@id='app']/div[1]/div[2]/div[1]/div[1]/div[3]/div[1]/button[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/img[1]    
    Click Element    //*[contains(@class,"_2KqWka")]/ancestor::div[contains(@class,"W3SxI")]    
    Wait Until Element Is Visible    //*[text()="Sign out"]    
    Click Element    //*[text()="Sign out"]    
   # Close Browser

               
unsuccessful_login
    Append To Environment Variable    Path     ${EXECDIR}${/}driver${/}
    Open Browser    https://outlook.live.com/owa/    browser=chrome 
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    Wait Until Element Is Visible    //*[text()="Sign in"]
    Click Element    //*[text()="Sign in"] 
    Wait Until Element Is Visible    //*[text()="Sign in"]//following::*[contains(@placeholder,"Email")]           
    Input Text    //*[text()="Sign in"]//following::*[contains(@placeholder,"Email")]    prasanna.a@ltts.com    
    Click Element    //*[@value="Next"]
    Wait Until Element Is Visible    //*[text()="Enter password"]//following::*[contains(@placeholder,"Password")]    
    Input Text    //*[text()="Enter password"]//following::*[contains(@placeholder,"Password")]    Psnumber  
    Click Element    //*[@value="Sign in"]      
    Wait Until Element Is Visible    //*[@value="No"]       30
    Click Element    //*[@value="No"]     
    Close Browser
    
screenshot
    Append To Environment Variable    Path     ${EXECDIR}${/}driver${/}
    Open Browser    https://www.guru99.com/    browser=chrome 
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    Capture Page Screenshot    D:\\main\\guru.png
    sleep    5s
    ${val}    Apr    
    Log To Console    ${val}
    Sleep    3s    
    Click Element At Coordinates    //section[@id='g-navigation']    ${val}[0][0]    ${val}[1][0]