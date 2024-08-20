___
> Check out my Blog that started this all: [Evaluating Apple MDM Products | SysManSquad](https://sysmansquad.com/2022/05/03/2022-05-03-evaluating-apple-mdm-products)
___

# Simple table comparing some basic features of Apple MDM products

## Key

| **:white_check_mark:**    | **Yes**                                           |
|---------------------------|---------------------------------------------------|
| **:x:**                   | No                                                |
| **:grey_exclamation:**    | Maybe or Partial                                  |
| **:heavy_minus_sign:**    | Not Applicable                                    |
| **:grey_question:**       | Unknown or Unclear                                |
| **:asterisk:**            | Additional Requirements Needed                    |
| **:heavy_dollar_sign:**   | Additional Cost on top of base licensing          |
| **macOS**                 | Feature for macOS                                 |
| **iOS/iPadOS**            | Feature for iOS flavors: iPhoneOS, iPadOS, iPodOS |
| **tvOS**                  | Feature for tvOS (Apple TV)                       |
| **Server Infrastructure** | Infrastructure feature, not OS-specific           |
| **watchOS**               | Feature for watchOS (Apple Watch)                 |
| **visionOS**              | Feature for visionOS (Apple Vision Pro)           |

## MDM Comparison Table

| **Feature** | **Category** | **OS** | **Meraki SM** | **Jamf** | **Kandji** | **Mosyle** | **Addigy** | **JumpCloud** | **Intune** | **Workspace ONE** | **Rippling** |
|---|---|---|---|---|---|---|---|---|---|---|---|
| **Local agent/binary** | Agent | macOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **CLI for local agent/binary** | Agent | macOS | :x: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :x: | :x: | :white_check_mark: | :x: |
| **Native Teams Integration** | Alerts | Server Infrastructure | :x: | :x: | :white_check_mark: | :x: | :grey_exclamation::asterisk::heavy_dollar_sign: | :x: | :x: | :x: | :white_check_mark: |
| **Native Slack Integration** | Alerts | Server Infrastructure | :x: | :x: | :white_check_mark: | :x: | :grey_exclamation::asterisk::heavy_dollar_sign: | :x: | :x: | :x: | :white_check_mark: |
| **Email Alerts** | Alerts | Server Infrastructure | :white_check_mark: | :white_check_mark::asterisk: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Generic Outgoing Webhook** | Alerts | Server Infrastructure | :white_check_mark: | :white_check_mark: | :x: | :x: | :x: | :x: | :x: | | :white_check_mark: |
| **EDR/Antivirus product** | Antivirus | macOS | :grey_question: | :white_check_mark::heavy_dollar_sign: | :white_check_mark::heavy_dollar_sign: | :white_check_mark::heavy_dollar_sign: | :white_check_mark::heavy_dollar_sign: | :x: | :white_check_mark::heavy_dollar_sign: | :white_check_mark::heavy_dollar_sign: | :white_check_mark::heavy_dollar_sign: |
| **EDR/Antivirus product** | Antivirus | iOS/iPadOS | :grey_question: | :x: | :x: | :x: | :white_check_mark::heavy_dollar_sign: | :x: | | | :x: |
| **Self Service App** | App Delivery | macOS | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :x: |
| **Self Service App** | App Delivery | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :x: | :white_check_mark: | :white_check_mark: | :x: |
| **Custom Cloud Content Distribution Network (CDN)** | Content Delivery | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Custom On-Premises Content Distribution** | Content Delivery | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | | | | :x: |
| **Apple Business Manager (ABM) VPP Token** | Apple Business Manager | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Custom Configuration Profile support** | Configuration | macOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Custom Configuration Profile support** | Configuration | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: |
| **Built-in Notifications to end-user** | App Update | macOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | |:white_check_mark: |
| **Built-in Notifications to end-user** | App Update | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :x: | :white_check_mark: | :white_check_mark: | | :x: |
| **Forced App Installs (within MDM limitations)** | App Delivery | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: |
| **Forced App Installs (within MDM limitations)** | App Delivery | macOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: |
| **Forced App Updates (within MDM limitations)** | App Update | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: |
| **Forced App Updates (within MDM limitations)** | App Update | macOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Declarative Device Management support** | Device Management | macOS | :grey_question: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :x: | :white_check_mark: |
| **Declarative Device Management support** | Device Management | iOS/iPadOS | :grey_question: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: beta | :x: |
| **Declarative Device Management support** | Device Management | watchOS | :grey_question: | :x: | :x: | :x: | | | | | :x: |
| **Declarative Device Management support** | Device Management | visionOS | :grey_question: | :x: | :x: | :x: | | | | | :x: |
| **Apple TV support** | Apple TV | tvOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | | :x: |
| **Apple Watch support** | Apple Watch | watchOS | :white_check_mark: | :x: | :x: | :x: | | | | | :x: |
| **Apple Vision Pro support** | Apple Vision Pro | visionOS | :x: | :x: | :x: | | | | | | :x: |
| **API - Public Documentation** | Automation | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **API - REST standards** | Automation | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | | :white_check_mark: |
| **API - Swagger Documentation** | Automation | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :grey_exclamation: | :white_check_mark: | |
| **API - Non-standard** | Automation | Server Infrastructure | :white_check_mark: | | | | | | | | |
| **Offline mode (cached enforcement by local agent/binary separate from Config Profiles)** | Agent | macOS | :x: | :white_check_mark: | :grey_exclamation: Parameters only | :x: | :grey_exclamation: | :x: | | | :white_check_mark: |
| **Blueprint Configuration framework** | Configuration | Server Infrastructure | :x: | :x: | :x: | :white_check_mark: | :x: | | | | |
| **Device Groups - Attribute-based  membership - Automatic updates** | Configuration | Server Infrastructure | :x: | :white_check_mark: | :x: | :grey_exclamation: | :white_check_mark: | :white_check_mark: | :grey_exclamation: | :white_check_mark: | :white_check_mark: |
| **Device Groups - Attribute-based  membership - Interval  updates** | Configuration | Server Infrastructure | :x: | :x: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | | :white_check_mark: |
| **User Groups - Attribute-based  membership - Automatic updates** | Configuration | Server Infrastructure | :x: | :white_check_mark: | :x: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | | :white_check_mark: |
| **User Groups - Attribute-based  membership - Interval  updates** | Configuration | Server Infrastructure | :x: | :x: | :x: | :x: | :white_check_mark: | :x: | | | :white_check_mark: |
| **User Groups - Directory Service group membership** | Configuration | Server Infrastructure | :x: | :x: | :x: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Shared iPad Mode support** | Shared iPad Mode | iPadOS | :grey_exclamation: Education only | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :x: |
| **App Lock - Single App Mode** | Configuration | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :x: | :x: |
| **Custom Scripts deployed from Admin Portal** | Configuration | Server Infrastructure | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Restrictions - App Block List** | Configuration | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark::heavy_dollar_sign: | :white_check_mark: | :white_check_mark: |
| **Supervise Device** | Configuration | macOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Supervise Device** | Configuration | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: |
| **Apple Business Manager (ABM) MDM Token** | Apple Business Manager | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Automated Device Enrollment (ADE) support** | Enrollment | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: |
| **Automated Device Enrollment (ADE) support** | Enrollment | macOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **ADE Package support** | Enrollment | macOS | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | | |
| **ADE Automatic User Creation from Identity Provider (IdP), like OIDC, Entra ID, Okta, Google Workspace,etc)** | Enrollment | macOS | :white_check_mark::heavy_dollar_sign: | :white_check_mark::heavy_dollar_sign: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | | | :x: |
| **Directory Integration - Okta** | Configuration | Server Infrastructure | :x: | :x: | :white_check_mark: SCIM | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :x: |
| **Directory Integration - Google Workspace** | Configuration | Server Infrastructure | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | | :x: |
| **Directory Integration - Microsoft Entra ID** | Configuration | Server Infrastructure | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: |
| **Admin Portal - SSO Login** | Identity | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Login Window replacement with IdP** | Identity | macOS | :x: | :white_check_mark::heavy_dollar_sign: | :white_check_mark: | :white_check_mark::heavy_dollar_sign: | :white_check_mark: | :white_check_mark: | :x: | :x: | :x: |
| **IdP Password Sync with local account** | Identity | macOS | :x: | :white_check_mark::heavy_dollar_sign: | :white_check_mark: | :white_check_mark::heavy_dollar_sign: | :white_check_mark: | :white_check_mark: | :x: | :x: | :x: |
| **Extension Attributes or equivalent** | Inventory | Server Infrastructure | :x: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | |
| **Migration agent or package from previous MDM** | Migration | macOS | :x: | :x: | :white_check_mark: | :grey_exclamation: | :white_check_mark: | :x: | :x: | :grey_exclamation: | :x: |
| **OS Updates** | OS Update | iOS/iPadOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: |
| **OS Updates** | OS Update | macOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **OS Updates** | OS Update | tvOS | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | | | :x: |
| **Admin Portal - Custom Access Roles (RBAC)** | Configuration | Server Infrastructure | :x: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Admin Portal - Pre-configured Roles (RBAC)** | Configuration | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| **Reporting - Built in to Admin Portal (no need to export data for manipulation)** | Reporting | Server Infrastructure | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark::heavy_dollar_sign: | | :white_check_mark: |
| **Reporting - Customize within Admin Portal** | Reporting | Server Infrastructure | :x: | :grey_exclamation: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark::heavy_dollar_sign: | :white_check_mark::heavy_dollar_sign: | | :white_check_mark: |
| **Built-In - Local Admin Password Solution (LAPS)** | Security | macOS | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :x: | | :white_check_mark: |
| **Baselines (Hardening) Pre-built configs** | Compliance | Server Infrastructure | :x: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :x: | | :x: |
| **Compliance Control** | Compliance | Server Infrastructure | :x: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | | :x: |
| **Security Templates** | Security | Server Infrastructure | :x: | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :x: | | :white_check_mark: |
| **Sandbox instance** | Sandbox | Server Infrastructure | :x: | :white_check_mark: | :grey_exclamation: | :x: | :x: | :x: | :white_check_mark: | | :x: |
| **Microsoft Conditional Access support** | Security | Server Infrastructure | :x: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :x: | :white_check_mark: | | :white_check_mark: | :x: |
| **Okta Device Trust support** | Security | Server Infrastructure | :x: | :x: | :white_check_mark: | :x: | :white_check_mark: | :x: | | | :x: |
| **Other conditional access support** | Security | Server Infrastructure | :x: | :white_check_mark: | | | | | | :white_check_mark: | :white_check_mark: |
