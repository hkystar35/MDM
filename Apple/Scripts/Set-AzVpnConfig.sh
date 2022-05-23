#!/bin/bash

#region Script variables
scriptName="$(/usr/bin/basename "$0")"
logPipe="/private/tmp/${scriptName%.*}.pipe"
logPath="/private/var/log/${scriptName%.*}.log"
consoleUser="$(/usr/bin/stat -f %Su /dev/console)"
uid=$(id -u "$consoleUser")
computerName="$(/usr/sbin/scutil --get ComputerName)"

# Exact Name of the Azure VPN Client as seen in macOS, minus the .app
appName="Azure VPN Client"
appFolderName="${appName}.app"
# Full Path to the app
appFullPath="/Applications/${appFolderName}"
# Full Path to the folder where the XML file needs to be created
vpnXMLDestinationFolder="/Users/${consoleUser}/Library/Containers/com.microsoft.AzureVpnMac/Data/Library/Application Support/com.microsoft.AzureVpnMac"
# Name your XML config file
prodVPNconfigFileName="YourProdVPNName.AzureVpnProfile.xml"

# Paste the contents of your Azure VPN Config file here
# https://docs.microsoft.com/en-us/azure/vpn-gateway/openvpn-azure-ad-client-mac#download
prodXmlConfig=$(
    cat <<EOFxml
<AzVpnProfile xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.datacontract.org/2004/07/">
  REDACTED CONTENT
</AzVpnProfile>
EOFxml
)

#endregion Script variables

#region Functions

#region Logging functions
/usr/bin/mkfifo "$logPipe"
/usr/bin/tee -a "$logPath" <"$logPipe" &
exec &>"$logPipe"
echo "$(/bin/date "+%Y-%m-%dT%H:%M:%S") [START] logging $scriptName" >>"$logPath"
echo $( tail -n 1 "$logPath")

# Logs Info messages
logInfo() {
    echo "$(/bin/date "+%Y-%m-%dT%H:%M:%S")  [INFO] $1" >>"$logPath"
    echo $( tail -n 1 "$logPath")
}
# Logs Alert messages
logAlert() {
    echo "$(/bin/date "+%Y-%m-%dT%H:%M:%S") [ALERT] $1" >>"$logPath"
    echo $( tail -n 1 "$logPath")
}
# Exit function to close out FIFO pipe
exiting() {
    echo "$(/bin/date "+%Y-%m-%dT%H:%M:%S")  [STOP] logging $scriptName" >>"$logPath"
	echo $( tail -n 1 "$logPath")
    /bin/rm -rf "$logPipe"
    /usr/bin/pkill -ail tee >/dev/null

    exit
}
#endregion Logging functions

# runAsUser function
# Credit: Armin Briegel @ scriptingOSX https://scriptingosx.com/2020/08/running-a-command-as-another-user/
runAsUser() {  
  if [ "$consoleUser" != "loginwindow" ]; then
    logInfo "FUNCTION runAsUser | Console User: $consoleUser | uid: $uid"
    logInfo "FUNCTION runAsUser | Trying to launch with sudo"
    launchctl asuser "$uid" sudo -u "$currentUser" "$@"

  else
    logAlert "no user logged in"
    exit 1
  fi
}

#endregion Functions

##########
## MAIN ##
##########

# Start log file
logInfo "Computer: $computerName | ConsoleUser: $consoleUser"

# Ensure app is installed first, otherwise exit script
# In macOS, an App is a Container, not a file, so we use '-d' to check for the directory
if [ -d "$appFullPath" ]; then
    logInfo "App installed: $appFolderName"
    logInfo "Launching $appFolderName.."
    # Open the app as the logged in user in order to create the destination directory with proper permissions
    runAsUser open -F -j "$appFullPath"
    sleep 5
    logInfo "Killing $appFolderName"
    # Kill the app
    pkill -x "$appName"
else
    logAlert "App not installed: $appFolderName"
    logAlert "Exiting Script"
    exiting
fi

# Make sure the destination folder was created, otherwise exit script
if [ -d "$vpnXMLDestinationFolder" ]; then
    logInfo "folder $vpnXMLDestinationFolder exists"
else
    logAlert "Destination Folder does not exist: $vpnXMLDestinationFolder"
    exiting
fi

# Finally, create the XML config file in the destination
logInfo "Creating File: $prodVPNconfigFileName"
cat <<< "$prodXmlConfig" >"${vpnXMLDestinationFolder}/${prodVPNconfigFileName}"

exiting