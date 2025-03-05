#!/usr/bin/env bash

: <<'COMMENT-BLOCK'
    .SYNOPSIS
    Creates a large number of local Mac user accounts for testing FileVault

    .DESCRIPTION
    Creates a large number of local Mac user accounts for testing FileVault
    The purpose is to:
        - test the limits of how many users can get a SecureToken to unlock FileVault
        - test how many users are visible in the FileVault user selection scrolling window
    
    .NOTES
    This probably isn't useful for many, but it was written as a quick way to make sure a
    shared Mac at a front desk could have many users able to unlock FileVault as a PoC for
    upper management

    Author:         hkystar35
    Date Created:   2022-07-22
    Github:         https://github.com/hkystar35/MDM/Apple/Scripts/createUsers_macOS_FV-test.bash

    History:
        2022-07-22  hkystar35 - created script
        2025-03-03  hkystar35 - added this comment block
                              - updated shebang

COMMENT-BLOCK

# Use a name generator site to create your array of fake names
arrUsers=("Zbikowski Johansen"
"Zuehlke Karlsen"
"Zachmann Johansson"
"Yingling Taylor"
"Yarish Walker"
"Zampogna Smith"
"Yearout Johansson"
"Zornes Karlsson"
"Zell Hughes"
"Yearsley Jones"
"Yuill Bengtsson"
"Youson Johansson"
"Yeary Martinez"
"Yorston Jones"
"Zweck Watson"
"Zollicoffer Pedersen"
"Zimmermann Johansson"
"Zillgitt Johannessen"
"Zoeller Johnsen"
"Yotsler Green"
"Zerwe Wilson"
"Zoellers Ross"
"Zeliff Patel"
"Yolland Karlsson"
"Yousef Nilsson"
"Zalmers Walker"
"Zimple Johansen"
"Youngblood Andreassen"
"Zeigler Pettersson"
"Zenichowski Robertson")

password="TestPassword2022!!"

for name in "${arrUsers[@]}"; do
    LastID=`dscl . -list /Users UniqueID | awk '{print $2}' | sort -n | tail -1`
    NextID=$((LastID + 1))
    username="${name// /.}"
    username=$(echo $username | awk '{print tolower($0)}')
    echo "User: $name"
    echo "   username: $username"
    
    #dscl . -delete /Users/$username
    
    # Create a new user with the username New user   
    dscl . -create /Users/$username
    
    # Add the display name of the User as John Doe   
    dscl . -create /Users/$username RealName "$name"  
    # Replace password_here with your desired password to set the password for this user  
    dscl . -passwd /Users/$username "$password"

    dscl . create /Users/$username UniqueID $NextID
    dscl . create /Users/$username PrimaryGroupID 20
    dscl . create /Users/$username UserShell /bin/bash
    dscl . create /Users/$username NFSHomeDirectory /Users/administrator
    cp -R /System/Library/User\ Template/English.lproj /Users/$username
    chown -R $username:staff /Users/$username
    
done