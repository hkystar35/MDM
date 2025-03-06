#!/usr/bin/env zsh

: <<'COMMENT-BLOCK'
    .SYNOPSIS
    Jamf Extension Attribute to get Logged In user for Zscaler

    .DESCRIPTION
    Jamf Extension Attribute to get Logged In user for Zscaler.
    Output options:
        `Not LoggedIn`
        `username@contoso.com`
    
    .NOTES
    Requires Zscaler Client Connecter 4.3 or higher installed
    Requires zscli to be enabled in your Zcloud portal

    Author:         hkystar35
    Date Created:   2025-03-03 18:34 MST
    Github:         https://github.com/hkystar35/MDM/Apple/Jamf/Extension%20Attributes/zscaler_get-loginStatus.zsh

    History:
        2025-03-03 18:34 MST  hkystar35 - created script

COMMENT-BLOCK

_zscli="/Applications/Zscaler/Zscaler.app/Contents/PlugIns/zscli"
result="Not LoggedIn"
jamf_jq="install-jq" # Jamf Policy event trigger

#region functions

function log_output {
	echo $(date +"%Y-%m-%d %H:%M:%S")" $1" >&2
	#echo $(date +"%Y-%m-%d %H:%M:%S")" $1" >>"$LOGFILE" # uncomment if you want a local log created
}

function test-jq {
	_jq=$(which jq)
	if jq --version; then
		log_output "jq is installed"
	else
		log_output "jq not installed"
		log_output "Running trigger ${jamf_jq}"
		jamf policy -event "${jamf_jq}"
	fi

    if jq --version; then
		log_output "jq is installed"
    else
        log_output "jq install FAILED"
        exit 0
    fi
}

#endregion functions

# Check if zscli found
if [ -f "${_zscli}" ]; then
    log_output "_zscli found: ${_zscli}"
    
    # Check jq installed
    test-jq

    # Check zscli for zpa username
    userName="$($_zscli status -s zpa | jq -r '.zpa.username')"
    if [[ $userName == *@contoso.com* ]]; then # modify with your companies username requirements
        log_output "$userName matches *@contoso.com*"
        result="${userName}"
    fi
fi

# Echo result to Jamf
echo "<result>${result}</result>"

exit 0
