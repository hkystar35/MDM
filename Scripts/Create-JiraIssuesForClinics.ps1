<#
	.SYNOPSIS
		Creates Jira Story Issues for clinic locations
	
	.DESCRIPTION
		Creates Jira Story Issues for clinic locations
        Organizies them into Epics for each US State
        Looks up each address with Google API to add Google Maps link to ticket
        Creates custom Labels for State, City, County, ZIP, and clinicID
    
    .PARAMETER ExcelSheetFullPath
        Full path to Excel file

    .PARAMETER ParentInitiativeKey
        Jira Initiative key for Parent Link to Epics

    .PARAMETER jirauser
        Email of Jira user for API authentications

    .PARAMETER JiraReporterUserID
        Jira User ID for use in Reporter field

    .PARAMETER jiraServerURL
        Full URL for Atlassian instance, like 'https://contoso.atlassian.net'

    .PARAMETER googleAPIKey
        API Key for Google APIs project with permissions to Google Maps

    .PARAMETER jiraAPIKey
        API Key for authentication

	.EXAMPLE
        .\Create-JiraIssuesForClinics.ps1 -ExcelSheetFullPath .\Clinics.xlsx `
            -ParentInitiativeKey 'PROJ-1234' `
            -jirauser 'hkystar35@contoso.com' `
            -JiraReporterUserID '12345abcde67890fghijkl' `
            -jiraServerURL 'https://contoso.atlassian.net' `
            -googleAPIKey 'jnwef34fh8340hf340fnfn3049f' `
            -jiraAPIKey 'ndosfin80ecin230fh04n0384hf8304f'
	
	.NOTES
		===========================================================================
		Created on:   	05 June 2022 
		Created by:   	Nic Wendlowsky (hkystar35)
		Organization: 	CONTOSO
		Filename:       Create-JiraIssuesForClinics.ps1
		===========================================================================
#>
[CmdletBinding()]
PARAM
(
    [Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()]$ExcelSheetFullPath,
    [Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()]$ParentInitiativeKey,
    [Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()]$jirauser,
    [Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()]$JiraReporterUserID,
    [Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()]$jiraServerURL,
    [Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()]$googleAPIKey,
    [Parameter(Mandatory = $true)][ValidateNotNullOrEmpty()]$jiraAPIKey
)
BEGIN {
    $InvocationInfo = $MyInvocation
    [System.IO.FileInfo]$ScriptFileInfo = $InvocationInfo.MyCommand.Path
    [string]$ScriptFullPath = $ScriptFileInfo.FullName
    [string]$ScriptNameFileExt = $ScriptFileInfo.Name
    [string]$ScriptName = $ScriptFileInfo.BaseName
    [string]$scriptRoot = Split-Path $ScriptFileInfo
	
    #region FUNCTION Write-Log
    FUNCTION Write-Log {
        [CmdletBinding()]
        PARAM
        (
            [Parameter(Mandatory = $true,
                ValueFromPipelineByPropertyName = $true)][ValidateNotNullOrEmpty()][Alias("LogContent")][string]$Message,
            [Parameter(Mandatory = $false)][Alias('LogPath')][string]$Path = "$env:windir\Logs\$($ScriptName).log",
            [Parameter(Mandatory = $false)][ValidateSet("Error", "Warn", "Info")][string]$Level = "Info",
            [Parameter(Mandatory = $false)][switch]$NoClobber,
            [Parameter(Mandatory = $false)][int]$MaxLogSize = '2097152'
        )
		
        BEGIN {
            # Set VerbosePreference to Continue so that verbose messages are displayed. 
            $VerbosePreference = 'SilentlyContinue'
            $FormattedDate = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        }
        PROCESS {
			
            # Test if log exists
            IF (Test-Path -Path $Path) {
                $FilePath = Get-Item -Path $Path
                IF ($NoClobber) {
                    Write-Error "Log file $Path already exists, and you specified NoClobber. Either delete the file or specify a different name."
                    RETURN
                }
                IF ($FilePath.Length -gt $MaxLogSize) {
                    Rename-Item -Path $FilePath.FullName -NewName $($FilePath.BaseName).log_ -Force
                }
            }
            ELSEIF (!(Test-Path $Path)) {
                Write-Verbose "Creating $Path."
                $NewLogFile = New-Item $Path -Force -ItemType File
            }
            # Write message to error, warning, or verbose pipeline and specify $LevelText 
            SWITCH ($Level) {
                'Error' {
                    Write-Error $Message
                    $LevelText = 'ERROR:'
                }
                'Warn' {
                    Write-Warning $Message
                    $LevelText = 'WARNING:'
                }
                'Info' {
                    Write-Verbose $Message
                    $LevelText = 'INFO:'
                }
            }
			
            # Write log entry to $Path 
            "$FormattedDate $LevelText $Message" | Out-File -FilePath $Path -Append
        }
        END {
        }
    }
    #endregion FUNCTION Write-Log	
	
}
PROCESS {
    TRY {
        #Requires -Modules pwshPlaces, jiraPS, importexcel

        # Variable translations
        $InitiativeKey = $ParentInitiativeKey
        $reporter = $JiraReporterUserID
        
        # Google API
        [securestring]$secStringPassword = ConvertTo-SecureString $jiraAPIKey -AsPlainText -Force

        # Jira API
        [pscredential]$jiracreds = New-Object System.Management.Automation.PSCredential ($jirauser, $secStringPassword)
        Set-JiraConfigServer -Server $jiraServerURL
        New-JiraSession -Credential $jiracreds

        # US State conversion Hashtable
        $StateAbbrToFullName = [ordered]@{
            'AL' = 'Alabama'
            'AK' = 'Alaska'
            'AR' = 'Arkansas'
            'AZ' = 'Arizona'
            'CA' = 'California'
            'CO' = 'Colorado'
            'CT' = 'Connecticut'
            'DE' = 'Delaware'
            'DC' = 'District of Columbia'
            'FL' = 'Florida'
            'GA' = 'Georgia'
            'HI' = 'Hawaii'
            'ID' = 'Idaho'
            'IL' = 'Illinois'
            'IN' = 'Indiana'
            'IA' = 'Iowa'
            'KS' = 'Kansas'
            'KY' = 'Kentucky'
            'LA' = 'Louisiana'
            'ME' = 'Maine'
            'MD' = 'Maryland'
            'MA' = 'Massachusetts'
            'MI' = 'Michigan'
            'MN' = 'Minnesota'
            'MS' = 'Mississippi'
            'MO' = 'Missouri'
            'MT' = 'Montana'
            'NE' = 'Nebraska'
            'NV' = 'Nevada'
            'NH' = 'New Hampshire'
            'NJ' = 'New Jersey'
            'NM' = 'New Mexico'
            'NY' = 'New York'
            'NC' = 'North Carolina'
            'ND' = 'North Dakota'
            'OH' = 'Ohio'
            'OK' = 'Oklahoma'
            'OR' = 'Oregon'
            'PA' = 'Pennsylvania'
            'RI' = 'Rhode Island'
            'SC' = 'South Carolina'
            'SD' = 'South Dakota'
            'TN' = 'Tennessee'
            'TX' = 'Texas'
            'UT' = 'Utah'
            'VT' = 'Vermont'
            'VA' = 'Virginia'
            'WA' = 'Washington'
            'WV' = 'West Virginia'
            'WI' = 'Wisconsin'
            'WY' = 'Wyoming'
        }

        # Excel Source info
        Write-Log -Message "Importing Unique Clinic Identifiers spreadsheet"
        $ExcelInfo = Get-ExcelSheetInfo -Path $ExcelSheetFullPath

        # Get all rows in each sheet
        Write-Log -Message "Ingest all "
        $AllItemsInAllSheets = @(
            $ExcelInfo | Foreach {
                [PSCustomObject]@{
                    SheetName = $_.Name
                    Content   = Import-Excel $_.Path -WorksheetName $_.Name
                }
            }
        )

        # Parse clinic info
        Write-Log -Message "Parsing clinic info and looking up Google Maps info"
        $AllClinics = @( 
            foreach ($Sheet in ($AllItemsInAllSheets | Where-Object { $_.sheetname -notmatch 'Temp|Glossary' } ) ) {
        
                foreach ($row in ($Sheet.Content | Where-Object {
                            $null -ne $_.'Alpha Numeric Clinic Number' `
                                -and $null -ne $_.'Address' `
                                -and $null -ne $_.'City' `
                                -and $null -ne $_.'State' `
                                -and $null -ne $_.'ZIP'
                        }
                    )
                ) {
                    $Clinic = [pscustomobject]@{
                        UniqueClinic  = $row.'Alpha Numeric Clinic Number'
                        CommonName    = $row.'Conventional Clinic Name'
                        StreetAddress = $row.Address.TrimStart()
                        Suite         = $row.Suite
                        City          = $row.City
                        State         = $StateAbbrToFullName[$($row.State)]
                        StateAbbr     = $row.State
                        ZIP           = $row.ZIP
                        FullAddress   = '{0}, {1}, {2} {3}' -f $row.Address.TrimStart(), $row.City, $row.State, $row.ZIP
                    }

                    # Lookup the address in Google Maps API
                    $GoogleFindAddress = Find-GMapPlace -Query $Clinic.FullAddress -GoogleAPIKey $googleAPIKey -ErrorAction SilentlyContinue | Select-Object -First 1
            
                    $GooglePlaceID = Get-GMapPlaceDetail -PlaceID $GoogleFindAddress.Place_ID -GoogleAPIKey $googleAPIKey
                    # Looks like the "administrative_area_level_2" is the County
                    $county = $GooglePlaceID.address_components | where types -Match "administrative_area_level_2" | Select-Object -ExpandProperty long_name

                    # Add/update properties for later use
                    $Clinic.FullAddress = $GoogleFindAddress.Address
                    IF ($null -ne $GooglePlaceID.name) { $Clinic.StreetAddress = $GooglePlaceID.name }
                    $Clinic | Add-Member -Force -MemberType NoteProperty -Name County -Value $(IF ($null -ne $county) { $county }else { 'unknown' })
                    $Clinic | Add-Member -Force -MemberType NoteProperty -Name GoogleMapsLink -Value $(IF ($null -ne $GooglePlaceID.GoogleMapsURL) { $GooglePlaceID.GoogleMapsURL }else { $null })
                    $Clinic | Add-Member -Force -MemberType NoteProperty -Name JiraDescription -Value "`n$($Clinic.PSObject.Properties | Where-Object {$_.Name -ne "JiraDescription"} | % { "{0} = {1}`n" -f $_.Name, $_.Value })`n`nPlease VERIFY the data above, it was pulled directly from the Unique Clinic Identifiers sheet and addresses and clinic status has not been validated."

                    $Clinic
                }

            }
        )

        # Index by State
        $AllClinicsIndexedByState = $AllClinics | Group-Object -Property StateAbbr -AsHashTable -AsString

        # Get each State clinics are in
        $states = $AllClinics | Select-Object -ExpandProperty StateAbbr -Unique | Sort-Object

        # Create and capture Epics for each State
        Write-Log -Message "Creating Epics for each State"
        $stateEpics = @(
            foreach ($state in $states) {
                $CountofClinics = $AllClinicsIndexedByState["$($state)"].Count
        
                SWITCH ($CountofClinics) {
                    { $_ -ge 2 } {
                        $summary = "{0} | {1} Clinics to Migrate" -f $StateAbbrToFullName[$($state)], $CountofClinics
                    }

                    { $_ -eq 1 } {
                        $summary = "{0} | 1 Clinic to Migrate" -f $StateAbbrToFullName[$($state)], $CountofClinics
                    }

                    default {
                        $summary = "{0} | (unknown) Clinic(s) to Migrate" -f $StateAbbrToFullName[$($state)]
                    }
                }

        
                $stateJiraSplat = [ordered]@{
                    Project     = "ITSE"
                    IssueType   = "Epic"
                    Reporter    = $reporter
                    Summary     = $summary
                    Description = "This epic has a Story for every clinic in {0}`n`nThere are approximately {1} clinics in {0}" -f $StateAbbrToFullName[$($state)], $CountofClinics
                    Fields      = @{
                        "Epic Name"       = "{0} | Clinic Migrations" -f $StateAbbrToFullName[$($state)]
                        customfield_10018 = $InitiativeKey
                    }
                    Labels      = @(
                        $("Clinic_State_{0}" -f $State)
                    )
                    Credential  = $jiracreds
                }

                # Add properties for later use
                $Epic = New-JiraIssue @stateJiraSplat
                $Epic | Add-Member -Force -MemberType NoteProperty -Name State -Value $StateAbbrToFullName[$($state)]
                $Epic | Add-Member -Force -MemberType NoteProperty -Name StateAbbr -Value $state
                $Epic | Add-Member -Force -MemberType NoteProperty -Name ClinicCount -Value $CountofClinics
        
                # Return the object to the array
                $Epic

            }
        )
        Write-Log -Message "Epics created"

        # Index Jira Epics for matching to clinics
        $stateEpicsIndexed = $stateEpics | Group-Object -Property StateAbbr -AsHashTable -AsString

        # Create and Capture Stories for each clinic
        # Link to Epic, lookup address with Google Maps API for Navigation link, lookup county
        Write-Log -Message "Creating Stories for each clinic"
        $clinicStories = @(
            foreach ($Clinic in $AllClinics) {
        
        
                # Set splat for creating Jira issue
                #$clinicJiraSplat = 
                [PSCustomObject]@{
                    Project     = "ITSE"
                    IssueType   = "Story"
                    reporter    = $reporter
                    Summary     = "{0} | {1} | {2} | {3} | {4} | {5}" -f $Clinic.StateAbbr, $Clinic.County, $Clinic.City, $Clinic.ZIP, $Clinic.StreetAddress, $Clinic.UniqueClinic
                    Description = $Clinic.JiraDescription
                    Fields      = @{
                        #"Epic Name" = "{0} | Clinic Migrations" -f $StateAbbrToFullName[$($_)]
                        customfield_10014 = $stateEpicsIndexed["$($Clinic.StateAbbr)"].key
                    }
                    Labels      = @(
                        $( "Clinic_State_{0}" -f $( $Clinic.StateAbbr    ) ), 
                        $( "Clinic_County_{0}" -f $( $Clinic.County       ).Replace(' ', '-') ), 
                        $( "Clinic_City_{0}" -f $( $Clinic.City         ).Replace(' ', '-') ), 
                        $( "Clinic_ZIP_{0}" -f $( $Clinic.ZIP          ) ),
                        $( "Clinic_UniqueID_{0}" -f $( $Clinic.UniqueClinic ) )
                    )
            
                    #Credential  = $jiracreds
                }

            }
        )
        # Create Stories
        $jirastories = $clinicStories | New-JiraIssue -Credential $jiracreds
        Write-Log -Message "Stories finished"
		
    }
    CATCH {
        $Line = $_.InvocationInfo.ScriptLineNumber
        "Error was in Line $line"
        Write-Log -Message "Error: $_" -Level Error
        Write-Log -Message "Error: on line $line" -Level Error
    }
}
END {
	
}

