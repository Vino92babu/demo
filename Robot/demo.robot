*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    Chrome
${id_index}    //select[@id="dropdown-class-example"]
@{abc}    2 3 4 5 a b c

*** Test Cases ***
# demo
#     userinput&password


# test1
#     Open Browser    ${url}    ${browser}
#     Maximize Browser Window.

userinput&password
    [Tags]    Sanity
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2s
    Input Text    //input[@name="username"]    "Admin"
    Input Password    //input[@name="password"]    "admin123"
    Click Button    //button[@type="submit"]

# dropdown
#     [Tags]    Smoke
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
#     Maximize Browser Window
#     Sleep    2s
#     Select From List By Index    ${id_index}    2
#     Select From List By Label    ${id_index}    Option1
#     Select From List By Value    ${id_index}    option3
#     Unselect From List By Label    locator


# checkbox
#     [Tags]    Sanity
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
#     Maximize Browser Window
#     Sleep    2s
#     Select Checkbox    //input[@id="checkBoxOption2"]
#     Select Checkbox    //input[@id="checkBoxOption3"]
#     Select Checkbox    //input[@id="checkBoxOption1"]
#     Unselect Checkbox    //input[@id="checkBoxOption3"]
    
# Radio_button
#     [Tags]    Regression
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
#     Maximize Browser Window
#     Sleep    2s
#     Select Radio Button    radioButton    radio2
#     Select Radio Button    radioButton    radio1

# Keyboardaction
#     Open Browser    https://the-internet.herokuapp.com/key_presses?    Chrome
#     Maximize Browser Window
#     Sleep    2s
#     Press Keys    //input[@id="target"]    ENTER
#     Sleep    1s
#     Press Keys    //input[@id="target"]    SPACE


# waits in seleninm
#     Open Browser    ${url}    ${browser}
#     Maximize Browser Window
#     Sleep    2s
#     # Set Selenium Speed    5s
#     # Set Selenium Timeout    30s
#     Set Selenium Implicit Wait    2s
#     Input Text    //input[@name="username"]    "Admin"
#     Input Password    //input[@name="password"]    "admin123"
#     Click Button    //button[@type="submit"]   



# Alerts
#     Open Browser    https://testautomationpractice.blogspot.com/    ${browser}
#     Maximize Browser Window
#     Sleep    2s
#     Click Element    //button[text()="Simple Alert"]
#     Handle Alert    accept
#     Handle Alert    dismiss

# tabbedwindow
#     Open Browser    https://testautomationpractice.blogspot.com/    ${browser}
#     Maximize Browser Window
#     Sleep    2s
#     Click Button    //button[text()="New Tab"]
#     Switch Window    SDET-QA Blog
#     Sleep    2s
#     Input Text    //input[@name="q"]    "AbC"
#     Press Keys    //input[@name="q"]    ENTER

# Mouseaction
#     Open Browser    https://testautomationpractice.blogspot.com/    ${browser}
#     Maximize Browser Window
#     Sleep    2s  
#     ${loc}    Get Location
#     Log To Console    ${loc}

#     Go To    https://the-internet.herokuapp.com/key_presses?
#     ${loc}    Get Location
#     Log To Console    ${loc}
    
#     Go Back    
#     ${loc}    Get Location
#     Log To Console    ${loc}

# MultipleBrowser Test
#     Open Browser    https://WWW.google.com/    Chrome
#     Maximize Browser Window
#     Sleep    2s

#     Open Browser    https://WWW.bing.com/    edge
#     Maximize Browser Window
#     Sleep    2s
#     Close Browser
#     Close All Browsers
    
    # Switch Browser    1
    # ${title}    Get Title
    # Log To Console    ${title}

    # Switch Browser    2
    # ${title}    Get Title
    # Log To Console    ${title}


# Scrolling
    # Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
    # Maximize Browser Window
    # Sleep    2s
    # Execute Javascript    window.scrollTo(1,1000)
    # Scroll Element Into View    //button[@id="mousehover"]
    # Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    # Sleep    1s
    # Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)

# Forloop
    # FOR    ${i}    IN RANGE    1    10+1    
    #     Log To Console    ${i}
        
    # END
    
    # FOR    ${i}    IN RANGE    1    10+1    
    #     Log    ${i}
        
    # END
 
    # FOR    ${i}    IN    @{abc}
    #     Log To Console    ${i}
        
    # END

    # ${name}    Set Variable    nameofteam
    # @{mylist}    Create List    apple orange yellow red

 
    # FOR    ${i}    IN    ${mylist}
    #     Log To Console    ${i}
        
    # END

# Getlinks
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
#     Maximize Browser Window
#     Sleep    2s
#     ${linkcount}    Get Element Count    //div
#     Log To Console    ${linkcount}
#     @{linkitem}    Create List
#     FOR    ${i}    IN RANGE    ${linkcount}
#         ${linkitem}    Get Text    //div
#         Log To Console    ${linkitem}
#     END

# Table Validation
#     Open Browser    https://testautomationpractice.blogspot.com/    ${browser}
#     Maximize Browser Window
#     Sleep    2s  
#     Scroll Element Into View    //h2[text()="Dynamic Web Table"]
#     ${rows}    Get Element Count    //table[@name="BookTable"]/tbody/tr
#     ${col}    Get Element Count    //table[@name="BookTable"]/tbody/tr[1]/th
#     Log To Console    ${rows}
#     Log To Console    ${col}
#     ${data}    Get Text    //table[@name="BookTable"]/tbody/tr[2]/td[2]
#     Log To Console    ${data}
#     Sleep    2s
#     Table Column Should Contain    //table[@name="BookTable"]    2    ${data}


*** Keywords ***
userinput&password
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2s
    Input Text    //input[@name="username"]    "Admin"
    Input Password    //input[@name="password"]    "admin123"
    Click Button    //button[@type="submit"]















