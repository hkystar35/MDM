#!/bin/bash
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