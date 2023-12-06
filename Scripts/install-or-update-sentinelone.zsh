#!/usr/bin/env bash

# Thanks to https://macadmins.slack.com/team/U03FJURNFNU for the start

# Jamf Variables. Override local values if value passed by Jamf
version=""
if [ "$4" != "" ]; then
    version=$4
fi
installerPkgName=""
if [ "$5" != "" ]; then
    installerPkgName=$5
fi
s1Token=""
if [ "$6" != "" ]; then
    s1Token=$6
fi

# Script Variables
installerFolder="/Library/Application Support/JAMF/Waiting Room"
installerFullPath="$installerFolder/$installerPkgName"
s1TokenFileName="com.sentinelone.registration-token"
s1TokenFullPath="$installerFolder/$s1TokenFileName"

# Validate Variable values
[[ -z "$version" ]] && $echo "version missing"
[[ -z "$installerPkgName" ]] && echo "installerPkgName missing"
[[ -z "$s1Token" ]] && echo "s1Token missing"
[[ ! -d "$installerFolder" ]] && echo "installerFolder not exist"
[[ ! -f "$installerFullPath" ]] && echo "installerFullPath not exist: \"$installerFullPath\""

if [[ -z "$version" ]] || [[ -z "$installerPkgName" ]] || [[ -z "$s1Token" ]] || [[ ! -d "$installerFolder" ]] || [[ ! -f "$installerFullPath" ]]; then
    echo "terminating error"
    exit 1
fi

#function versionConvert - converts version string to integer for comparison
versionConvert() {
    echo "$@" | awk -F. '{ printf("%d%03d%03d%03d\n", $1,$2,$3,$4); }'
}

#function writeTokenFile - write token file to installer package folder
writeTokenFile() {
    echo "writing token file"
    echo "$s1Token" >"$@"
}

# Check for sentinelctl binary
S1_cmd=$(which sentinelctl)

if [ -f "$S1_cmd" ]; then
    echo "S1_cmd is installed: $S1_cmd"

    S1_version=$($S1_cmd version | awk '{print $2}')
    if [ $(versionConvert $S1_version) -ge $(versionConvert $version) ]; then
        echo "Installed version, $S1_version, is greater than or equal to required version, $version"
        echo "S1 is up to date nothing to install"
        code=0
    else
        echo "upgrading S1 using command \"$S1_cmd and installer package $installerFullPath\""
        writeTokenFile "$s1TokenFullPath"
        $S1_cmd upgrade-pkg "$installerFullPath"
        code=$(echo $?)
    fi
else
    echo "S1 not installed. Installing."
    writeTokenFile "$s1TokenFullPath"
    /usr/sbin/installer -pkg "$installerFullPath" -target /
    code=$(echo $?)
fi

if [[ -f "$s1TokenFullPath" ]]; then
    echo "deleting token file:"
    rm -f -v "$s1TokenFullPath"
else
    echo "token file not found: $s1TokenFullPath"
fi

echo "code $code"

exit $code