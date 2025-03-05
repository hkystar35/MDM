#!/usr/bin/env zsh

autoload is-at-least

##############################################################################
# Check Zscaler service status
#
# Zscaler Internet Access (ZIA)
#
# Pre-requisites:
# 1) Zscaler Client Connector version 4.3 or higher Installed
# 2) Zscaler CLI is present
# 3) Zscaler CLI enabled in Zcloud Portal
# 4) jq installed
#
##############################################################################

minimumZCCversion="4.3"
ZCCversion="$(defaults read /Applications/Zscaler/Zscaler.app/Contents/Info.plist CFBundleShortVersionString)"
_zscli="/Applications/Zscaler/Zscaler.app/Contents/PlugIns/zscli"
jamf_jq="install-jq"
zscaler_service="zia" # zpa, zia, zdx

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
}

#endregion functions

if [[ -e "/Applications/Zscaler/Zscaler.app" ]]; then
	log_output "Zscaler exists"
	if is-at-least "${minimumZCCversion}" "${ZCCversion}"; then # don't change to double-[[]]; breaks the line
		log_output "$ZCCversion is greater than or equal to $minimumZCCversion"
		if [[ -f "${_zscli}" ]]; then
			log_output "ZCC cli exists: $_zscli"
		else
			log_output "ZCC cli not found"
			exit 0
		fi
	else
		log_output "$ZCCversion is LESS than or equal to $minimumZCCversion"
		exit 0
	fi
else
	log_output "Zscaler not installed"
	exit 0
fi

test-jq

zscaler_Status=$( sudo /Applications/Zscaler/Zscaler.app/Contents/PlugIns/zscli status -s "${zscaler_service}" )
status1="$(echo $zscaler_Status | jq -r ".${zscaler_service}.serviceStatus")" # TUNNEL_FORWARDING | TUNNEL_NONE

/bin/echo "<result>$(echo $status1 | tr ' ' ';')</result>"
