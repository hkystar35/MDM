#!/usr/bin/env zsh

: <<'COMMENT-BLOCK'
    .SYNOPSIS
    Sets organization's proxy variables in system shell profile and creates files if missing.

    .DESCRIPTION
    Sets organization's proxy variables in system shell profile and creates files if missing.
    Setting these values ensures command-line operations, like curl, are proxy-aware and can function with minimal user impact.

    .EXAMPLE
    set-ProxyVariables.zsh

    .NOTES
    Terminal.app will need to be restarted fully in order for printenv to reflect values

    Author:         hkystar35
    Date Created:   2023-04-19 16:41 MST
    Github:         https://github.com/hkystar35/MDM/new/main/Scripts/set-proxyVariables.zsh

    History:
        2023-04-19  hkystar35 - created script
        2023-04-19  hkystar35 - added comment blocks and timestamps to line entries for auditing
        2023-04-28  hkystar35 - updated variables to include UPPER and lower cases and used variables
        2023-06-21  hkystar35 - re-wrote script to NOT mess with user's profiles
                                - /etc/zshrc is modified with a test command to try sourcing "/etc/${orgShortName:l}/${orgShortName:l}_shell_proxySettings.sh"
                                - "/etc/${orgShortName:l}/${orgShortName:l}_shell_proxySettings.sh" contains the proxy variables
                                - backup created of /etc/zshrc
                                - log function writes to /etc/$orgShortName/$log_file

COMMENT-BLOCK

# Jamf built-in variables
## comment out or modify these if not using Jamf's built in script runner
mountPoint="$1"
computerName="$2"
userName="$3"

# Script Parameters
##  Be sure to modify the numbers if not using Jamf's script runner
orgName="$4" # Jamf parameter name: Full Organization Name, like Example International, LLC
orgShortName="$5" # Jamf parameter name: Org short name, like Example. Will be lower-cased in script.
webproxy_domain="$6" # Jamf parameter name: Proxy domain, like proxy.example.com (don't include http prefixes)
webproxy_port="$7" # Jamf parameter name: Proxy port, like 80
noProxyString="$8" # Jamf parameter name: No Proxy string, comma separated list like .example.com,127.0.0.1,localhost,*.example.com
webproxy_prefix="http"
webproxy_URL="$webproxy_prefix://$webproxy_domain"
webproxy_fullURL="$webproxy_prefix://$webproxy_domain:$webproxy_port"

# Global settings file
globalSettings_FullPath="/etc/${orgShortName:l}/${orgShortName:l}_shell_proxySettings.sh"
globalSettings_Folder="${globalSettings_FullPath:h}"
globalSettings_FileName="${globalSettings_FullPath:t}"

# Script variables
log_file="${globalSettings_Folder}/${globalSettings_FileName:t:r}.log"
system_shells=("/etc/profile" "/etc/zshenv")

# Functions

# log [-e] [-f FILE] MESSAGE...
function log() {
  function timestamp() {
    date '+%F %T %Z'
  }
  set -eu
  local prefix="$(timestamp)"
  local stream=1
  local files=("$log_file")
  # handle options
  while ! ${1+false}; do
    case "$1" in
    -e | --error)
      prefix="$(timestamp) ERROR:"
      stream=2
      ;;
    -f | --file)
      shift
      files+=("${1-}")
      ;;
    --)
      shift
      break
      ;; # end of arguments
    -*)
      log -e "log: invalid option '$1'"
      return 1
      ;;
    *) break ;; # start of message
    esac
    shift
  done
  if ${1+false}; then
    log -e "log: no message!"
    return 1
  fi
  # if we have a prefix, update our argument list
  if [ "$prefix" ]; then
    set -- "$prefix " "$@"
  fi
  # now perform the action
  for file ("$files[@]"); do
    /bin/mkdir -p $file:h
    /usr/bin/touch $file
  done
  printf '%b' "$@" '\n' | tee -a "${files[@]}" >&$stream
}

function lines() {
  local ret
  reply=( "${(@f)$(cat -- "$@"; ret=$?; echo .; exit $ret)}" )
  ret=$?
  reply[-1]=( ${reply[-1]%.} )
  return $ret
}

# Main script
log "   ###"
log "START of script"
log "   ==="

# Log variables
log "Script Param    |       Organization Name: $orgName"
log "Script Param    | Organization Short Name: $orgShortName"
log "Script Param    |      Web Proxy full URL: $webproxy_fullURL"
log "Script Variable |              Log folder: $globalSettings_Folder"
log "Script Variable |                Log file: $log_file"
log "Script Variable |    Target settings file: $globalSettings_FullPath"

# Create files and folders
log "Creating folder path: $globalSettings_Folder"
/bin/mkdir -p "$globalSettings_Folder"
log "Creating file: $globalSettings_FullPath"
/usr/bin/touch "$globalSettings_FullPath"


# $globalSettings_FullPath Content
cat << GLOBALSETTINGSBLOCK > "$globalSettings_FullPath"
# $orgName proxy settings
proxyDef="$webproxy_fullURL"
export http_proxy="\${proxyDef}"
export HTTP_PROXY="\${proxyDef}"
export https_proxy="\${proxyDef}"
export HTTPS_PROXY="\${proxyDef}"
export no_proxy="$noProxyString"
export NO_PROXY="$noProxyString"
GLOBALSETTINGSBLOCK

log "Added proxy settings to $globalSettings_FullPath"
i=0
lines "$globalSettings_FullPath" &&
for line in "$reply[@]"; do
  ((++i))
  log "   Line$i | $line"
done

# Modify System Shells

for shell in "$system_shells[@]"; do

  log "Creating file: $shell"
  /usr/bin/touch "$shell"
  log "Adding missing lines to $shell, if needed"
  backup_shell="$shell.bak"
  /bin/cp $shell $backup_shell
  shell_line1="# $orgName Proxy settings"
  grep -qxF "$shell_line1" $shell || echo "$shell_line1" >> $shell

  shell_line2="test -f \"$globalSettings_FullPath\" && source \"$globalSettings_FullPath\""
  grep -qxF "$shell_line2" $shell || echo "$shell_line2" >> $shell

done

log "   ==="
log "END of script"
log "   ###"
