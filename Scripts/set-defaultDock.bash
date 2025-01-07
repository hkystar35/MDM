#!/usr/bin/env bash

# This script sets the default dock for the logged in user if the apps in the array exist.
# This script was mostly written by someone else, but I cannot find the source to give credit. Please message me if you find it.

# Include Standard PATH for commands
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

# Set up variables
# Jamf Variable. Override local values if value passed by Jamf. Jamf Script Param Label: custom Jamf trigger for Dockutil installation
jamfEvent="install-dockutil"
if [ "$4" != "" ]; then
    jamfEvent=$4
fi

dockutil="/usr/local/bin/dockutil"
loggedInUser=$(/bin/echo "show State:/Users/ConsoleUser" | /usr/sbin/scutil | /usr/bin/awk '/Name :/&&!/loginwindow/{print $3}')
loggedInUserHome="/Users/$loggedInUser"
userPlist=$loggedInUserHome/Library/Preferences/com.apple.dock.plist

whoami="/usr/bin/whoami"
echo="/bin/echo"
sudo="/usr/bin/sudo"
jamf="/usr/local/bin/jamf"
killall="/usr/bin/killall"

##########################################################################################
# Check if script is running as root
##########################################################################################

if [ "$($whoami)" != root ]; then
    $echo "[ERROR] This script must be run using sudo or as root. Exiting..."
    exit 1
fi

##########################################################################################
# Check if Dockutil is installed, try remediation or exit
##########################################################################################

if [[ -f "$dockutil" ]]; then
    $echo "dockutil installed at \"$dockutil\""
else
    $echo "dockutil not installed. Calling Jamf policy to install."
    $jamf policy -event "$jamfEvent"
    if [[ -f "$dockutil" ]]; then
        $echo "dockutil installed successfully by Jamf"
    else
        $echo "Failed to install Jamf event \"$jamfEvent\". Exiting script."
        exit 1
    fi
fi

##########################################################################################
# Use Dockutil to Modify Logged-In User's Dock
##########################################################################################
$echo "----------------------------------------------------------------------"
$echo "Dockutil script to modify logged-in user's Dock"
$echo "----------------------------------------------------------------------"
$echo "Current logged-in user: $loggedInUser"
$echo "----------------------------------------------------------------------"
$echo "Removing all Items from $loggedInUser's Dock..."
$sudo -u "$loggedInUser" $dockutil --remove all --no-restart "$userPlist"

$echo "Creating New Dock..."
$echo
$echo "Adding \"Finder\"..."

# Add items in order, if exist
array_dockApps_sectionApps=(
    "/Applications/Self Service.app"
    "/Applications/Microsoft Outlook.app"
    "/Applications/Microsoft Teams.app"
    "/Applications/zoom.us.app"
    "/Applications/Microsoft Edge.app"
    "/Applications/Microsoft Excel.app"
    "/Applications/Microsoft OneNote.app"
    "/Applications/Microsoft PowerPoint.app"
    "/Applications/Microsoft Word.app"
    "/Applications/Windows App.app"
    "/Applications/OneDrive.app"
    "/Users/$loggedInUser/Applications/Edge Apps.localized/IT Help.app"
)

for APP in "${array_dockApps_sectionApps[@]}"; do
    if [ -d "$APP" ]; then
        $echo "$APP exists, Adding to dock ..."
        $sudo -u $loggedInUser $dockutil --no-restart --add "$APP" --section apps $userPlist
    else
        $echo "$APP does NOT exist, skipping"
    fi
done

# Add Launchpad to beginning and restarting dock
$echo "Restarting Dock..."
$sudo -u "$loggedInUser" $dockutil --add "/System/Applications/Launchpad.app" --position beginning $userPlist

exit 0
