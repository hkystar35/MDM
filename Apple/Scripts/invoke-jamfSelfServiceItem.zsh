#!/usr/bin/env zsh

: <<'COMMENT-BLOCK'
    .SYNOPSIS
    Script to open or execute a Jamf Self Service item as the logged in user.

    .DESCRIPTION
    Script to open or execute a Jamf Self Service item as the logged in user.

    .PARAMETER $1
    Reserved for Jamf - mount point

    .PARAMETER $2
    Reserved for Jamf - computer name

    .PARAMETER $3
    Reserved for Jamf - username

    .PARAMETER $4
    jamfSelfServiceEntity="$4"
    Must be one of: configprofile, policy, or app-installer
    $entityList variable sets the list regex match

    .PARAMETER $5
    jamfSelfServiceItemId="$5"
    Must be integer
    $iDregex variable sets the list regex match

    .PARAMETER $6
    jamfSelfServiceAction="$6"
    Must be one of: view or execute
    $actionList variable sets the list regex match

    .EXAMPLE
    ./invoke-jamfSelfServiceItem.zsh '' '' '' 'policy' '123' 'view'

    .NOTES
    To use this outside of the Jamf script node, it's recommended to change the parameters to use 1-3 instead of 4-6 to avoid passing empty arguments.
    

    Author:         hkystar35
    Date Created:   2025-10-13 17:16 MST

    History:
        2025-10-13  - hkystar35 - created script
                    

COMMENT-BLOCK

# Jamf Variable. Override local values if value passed by Jamf. Jamf Script Param Label:
jamfSelfServiceEntity=''
if [ "$4" != "" ]; then
    jamfSelfServiceEntity="${4}"
fi

jamfSelfServiceItemId=''
if [ "$5" != "" ]; then
    jamfSelfServiceItemId=$5
fi

jamfSelfServiceAction=''
if [ "$6" != "" ]; then
    jamfSelfServiceAction=$6
fi

# check not empty
entityList='^(configprofile|policy|app\-installer)+$'
iDregex='^[0-9]+$'
actionList='^(view|execute)+$'

if ! [[ "${jamfSelfServiceEntity}" =~ ${entityList} ]]; then
    echo "   \"$jamfSelfServiceEntity\" does not match list \"${entityList}\""
    exit 1
fi

if ! [[ $jamfSelfServiceItemId =~ $iDregex ]]; then
    echo "   \"$jamfSelfServiceItemId\" does not match regex \"${iDregex}\""
    exit 1
fi

if ! [[ "${jamfSelfServiceAction}" =~ $actionList ]]; then
    echo "   \"$jamfSelfServiceAction\" does not match list \"${actionList}\""
    exit 1
fi

# jamfConfigurationProfileId='523'
jamfSelfServiceUrl="jamfselfservice://content?entity=${jamfSelfServiceEntity}&id=${jamfSelfServiceItemId}&action=${jamfSelfServiceAction}"

## Get current logged on user
currentUser=$(/bin/echo "show State:/Users/ConsoleUser" | /usr/sbin/scutil | /usr/bin/awk '/Name :/&&!/loginwindow/{print $3}')
currentUserUID=$(/bin/echo "show State:/Users/ConsoleUser" | scutil | awk '/kCGSSessionUserIDKey :/ { print $3 }')
currentUserHomeFolder=$(dscl . -read /users/${currentUser} NFSHomeDirectory | cut -d " " -f 2)

runAsUser() {
    if [ "$currentUser" != "loginwindow" ]; then
        launchctl asuser "$currentUserUID" sudo -u "$currentUser" "$@"
    else
        echo "no user logged in"
    fi
}

runAsUser open "${jamfSelfServiceUrl}"
