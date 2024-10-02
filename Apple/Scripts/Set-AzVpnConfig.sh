#!/bin/bash

#region Variables
# Main variables
scriptName="$(/usr/bin/basename "$0")"
logPipe="/private/tmp/${scriptName%.*}.pipe"
logPath="/private/var/log/${scriptName%.*}.log"
consoleUser="$(/usr/bin/stat -f %Su /dev/console)"
uid=$(id -u "$consoleUser")
computerName="$(/usr/sbin/scutil --get ComputerName)"
homeFolder=$(dscl . -read /users/${consoleUser} NFSHomeDirectory | cut -d " " -f 2)

# Script variables
# Exact App Name, without .app at the end
appName="Azure VPN Client"
appFolderName="${appName}.app"
appFullPath="/Applications/${appFolderName}"
# Full Path to the folder where the XML file needs to be created
vpnXMLDestinationFolder="${homeFolder}/Library/Containers/com.microsoft.AzureVpnMac/Data/Library/Application Support/com.microsoft.AzureVpnMac"
# VPN Connection Name
prodVPNname="Contoso_VPN-Profile"
prodVPNconfigFileName="${prodVPNname}.AzureVpnProfile.xml"

# Paste the contents of your Azure VPN Config file here
# https://docs.microsoft.com/en-us/azure/vpn-gateway/openvpn-azure-ad-client-mac#download
prodXmlConfig=$(
    cat <<EOFxml
<AzVpnProfile xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.datacontract.org/2004/07/">
  REDACTED CONTENT
</AzVpnProfile>
EOFxml
)
#endregion Variables

#region Functions

#region Logging functions
# Credit Brock Walters https://www.linkedin.com/in/brock-walters-247a2990
/usr/bin/mkfifo "$logPipe"
/usr/bin/tee -a "$logPath" <"$logPipe" &
exec &>"$logPipe"
echo "$(/bin/date "+%Y-%m-%dT%H:%M:%S") [START] logging $scriptName" >>"$logPath"
echo $(tail -n 1 "$logPath")

# Logs Info messages
logInfo() {
  echo "$(/bin/date "+%Y-%m-%dT%H:%M:%S")  [INFO] $1" >>"$logPath"
  echo $(tail -n 1 "$logPath")
}
# Logs Alert messages
logAlert() {
  echo "$(/bin/date "+%Y-%m-%dT%H:%M:%S") [ALERT] $1" >>"$logPath"
  echo $(tail -n 1 "$logPath")
}
# Exit function to close out FIFO pipe
exiting() {
  echo "$(/bin/date "+%Y-%m-%dT%H:%M:%S")  [STOP] logging $scriptName" >>"$logPath"
  echo $(tail -n 1 "$logPath")
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
    #logInfo "FUNCTION runAsUser | Trying to launch with launchctl"
    logInfo "FUNCTION runAsUser | Trying to launch with sudo"
    #launchctl asuser "$uid"
    launchctl asuser "$uid" sudo -u "$consoleUser" "$@"

  else
    logAlert "no user logged in"
    # uncomment the exit command
    # to make the function exit with an error when no user is logged in
    exit 1
  fi
}

#endregion Functions

##########
## MAIN ##
##########

#region Main Script

logInfo "Computer: $computerName | ConsoleUser: $consoleUser"

# Ensure app is installed first, otherwise exit script
# In macOS, an App is a Container, not a file, so we use '-d' to check for the directory
if [ -d "$appFullPath" ]; then
  logInfo "App installed: $appFolderName"
  logInfo "Launching $appFolderName.."

  # Open App as consoleUser then kill. This created the folder we need with required permissions.
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
  # Remove any existing files or subfolders. This ensures old configs are removed for future updates.
  rm -rf "$vpnXMLDestinationFolder"/*
else
  logAlert "Destination Folder does not exist: $vpnXMLDestinationFolder"
  exiting
fi

#region Set Folder Permissions
# Document folder permissions need in case future app updates break the above process
#logInfo "Setting permissions of 755 to Folder: $vpnXMLDestinationFolder"
#chmod 755 "$vpnXMLDestinationFolder"

#logInfo "Setting xattr to Folder: $vpnXMLDestinationFolder"
#xattr -w com.apple.quarantine "0086;00000000;Azure VPN Client;" "$vpnXMLDestinationFolder"
#endregion Set Folder Permissions

logInfo "Creating File: $prodVPNconfigFileName"
# Set content for and create file in destination folder
cat <<<"$prodXmlConfig" >"${vpnXMLDestinationFolder}/${prodVPNconfigFileName}"

exiting
#endregion Main Script