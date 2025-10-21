#!/usr/bin/env zsh

# Heavily borrowed from https://gist.github.com/colorenz/ffcd2906262ade3af16b91361ffef47e#file-check_onedrive_kfm_new-sh

#Get Current logined User
currentUser=$(/bin/echo "show State:/Users/ConsoleUser" | /usr/sbin/scutil | /usr/bin/awk '/Name :/&&!/loginwindow/{print $3}')
currentUserHomeFolder=$(dscl . -read /users/${currentUser} NFSHomeDirectory | cut -d " " -f 2)

plist="${currentUserHomeFolder}/Library/Group Containers/UBF8T346G9.OneDriveStandaloneSuite/Library/Preferences/UBF8T346G9.OneDriveStandaloneSuite.plist"
plistKey='AccountInfo_Business1:KfmFoldersProtectedNow'
RESULT='Not Found'

if [[ -n "${plistKey}" && -n "${plist}" ]]; then
    if value="$(/usr/libexec/PlistBuddy -c "Print :${plistKey}" "${plist}")"; then
        case "$value" in
        "0")
            RESULT='FALSE'
            ;;
        "512")
            RESULT='Desktop=TRUE'
            ;;
        "1024")
            RESULT='Documents=TRUE'
            ;;
        "1536")
            RESULT='DesktopDocuments=TRUE'
            ;;
        *)
            RESULT="${value}"
            ;;
        esac
    fi
fi

/bin/echo "<result>${RESULT}</result>"

exit 0
