### MDM Table Definitions

| **Feature ** | **Category** | **OS** | **Definition** |
|---|---|---|---| 
| **Local agent/binary** | Agent | macOS | MDM functionality-related GUI value-add, device or user-focused/facing |
| **CLI for local agent/binary** | Agent | macOS | Command line interface of vendor-maintained/deployed code that provides status/inventory or interaction with admin actions |
| **Native Teams Integration** | Alerts | Server Infrastructure | More than zero 'batteries included' capability provided to do as little as get admin status messages or as much as approval/creation/updating/deleting actions via 'chatops' | 
| **Native Slack Integration** | Alerts | Server Infrastructure | Same as above |
| **Email Alerts** | Alerts | Server Infrastructure | More than zero 'batteries included' capability to have alerts 'pushed' from the MDM |
| **Generic Outgoing Webhook** | Alerts | Server Infrastructure | Near-realtime, 'consequential'/practically useful and configurable outbound HTTP POSTs in at least json if not protobuf/rpc format |
| **EDR/Antivirus product** | Antivirus | macOS | Either running locally on the computer or able to cause the MDM to use non-customer 'sourced' intelligence to detect/respond to malware etc. |
| **EDR/Antivirus product** | Antivirus | iOS/iPadOS | Non-customer 'sourced' intelligence to detect/respond to malware etc. |
| **Self Service App** | App Delivery | macOS | Device/user-focused/facing 'store' or way for end users to interact with info, 'curated' apps and/or scripts |
| **Self Service App** | App Delivery | iOS/iPadOS | Device/user-focused/facing 'store' or way for end users to interact with info or 'curated' apps |
| **Custom Cloud Content Distribution Network (CDN)** | Content Delivery | Server Infrastructure | At least some redundancy (multiple data center/region) capability to distribute at least apps if not also configs |
| **Custom On-Premises Content Distribution** | Content Delivery | Server Infrastructure | Some if not all MDM resources can be 'cached' and hosted within a trusted address space |
| **Apple Business/School Manager (ABM) VPP Token** | Apple Business Manager | Server Infrastructure | Minimally can access and account for app licenses purchased via 'AxM' (either program) |
| **Custom Configuration Profile support** | Configuration | macOS | Configuration profiles with arbitrary keys can be loaded in and distributed |
| **Custom Configuration Profile support** | Configuration | iOS/iPadOS | Same as above |
| **Built-in Notifications to end-user** | App Update | macOS | Without unreasonable admin effort can send practically useful notifications to enrolled computers |
| **Built-in Notifications to end-user** | App Update | iOS/iPadOS | Same as above but limited to notifications like at least app badging |
| **Forced App Installs (within MDM limitations)** | App Delivery | macOS | Assuming reasonable criteria for 'installed', can ensure the action occurs at least once (without VPP) |
| **Forced App Installs (within MDM limitations)** | App Delivery | iOS/iPadOS | Can ensure an app is 'locked' on a supervised device |
| **Forced App Updates (within MDM limitations)** | App Update | macOS | Can ensure when an app is already considered present it can be updated to a functional 'latest' version (without VPP) |
| **Forced App Updates (within MDM limitations)** | App Update | iOS/iPadOS | Can ensure a non-latest app version is updated to 'latest' |
| **Declarative Device Management support** | Device Management | macOS | Can leverage the updated protocol commands supported by Apple as defined in the [Apple Platform Deployment](https://support.apple.com/guide/deployment) guide |
| **Declarative Device Management support** | Device Management | iOS/iPadOS | Same, for iOS/iPadOS |
| **Declarative Device Management support** | Device Management | watchOS | Same, for watchOS |
| **Declarative Device Management support** | Device Management | visionOS | Same, for visionOS |
| **Apple TV support** | Apple TV | tvOS | Can manage Apple TV devices |
| **Apple Watch support** | Apple Watch | watchOS | Can manage Apple Watch devices |
| **Apple Vision Pro support** | Apple Vision Pro | visionOS | Can manage Apple Vision Pro devices |
| **API - Public Documentation** | Automation | Server Infrastructure | Provides usable documentation for an API without undue access restrictions |
| **API - REST standards** | Automation | Server Infrastructure | API is built with reasonable industry standard design, e.g. supporting [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) interactions |
| **API - Swagger Documentation** | Automation | Server Infrastructure | Provides API documentation using the [Swagger](https://swagger.io/) or a similar browser-based way to simulate interactions |
| **API - Non-standard** | Automation | Server Infrastructure | While not RESTful, an API surface is provided in a reasonably consumable format at all |
| **Offline mode** | Agent | macOS | When 'air-gap'd or otherwise without server connectivity, can use local agent/binary to enforce some (non-config profile) policies |
| **Blueprint Configuration framework** | Configuration | Server Infrastructure | A working abstraction is present to make configuration/tasks reusable across devices, resources, and/or users/groups |
| **Device Group Membership - Automatic sync** | Configuration | Server Infrastructure | Calculation of device group membership happens in near-to-constant time, based on practical attributes |
| **Device Group Membership - Interval sync** | Configuration | Server Infrastructure | Device group membership is recalculated on a scheduled interval, rather than close-to-realtime |
| **User Group Membership - Automatic sync** | Configuration | Server Infrastructure | Calculation of user group membership happens in near-to-constant time, based on practical attributes |
| **User Groups Membership - Interval sync** | Configuration | Server Infrastructure | User group membership is recalculated on a scheduled interval, rather than close-to-realtime |
| **User Groups - Directory Service group membership** | Configuration | Server Infrastructure | Can be linked to a user database like LDAP/Active Directory to automatically sync at least the administrator access group |
| **Shared iPad Mode support** | Shared iPad Mode | iPadOS | Can configure and manage devices in Shared iPad Mode |
| **App Lock - Single App Mode** | Configuration | iOS/iPadOS | Can lock a device into a single approved app, including management to update the app without disruption |
| **Custom Scripts deployed from Admin Portal** | Configuration | Server Infrastructure | Provides a secure way to distribute arbitrary code in common scripting languages on enrolled devices |
| **Restrictions - App Block List** | Configuration | Server Infrastructure | Can reasonably intercept or prevent the execution of identified unwanted app bundles |
| **Supervise Device** | Configuration | macOS | Can establish a supervision 'relationship' with a device to provide enhanced MDM features and enable configuration profile payloads |
| **Supervise Device** | Configuration | iOS/iPadOS | Same, for iOS/iPadOS devices |
| **Apple Business/School Manager (ABM/ASM) MDM Token** | Apple Business Manager | Server Infrastructure | Conforms to all reasonably required parts of the spec needed to integrate with and leverage an ABM/ASM MDM token, including VPP |
| **Automated Device Enrollment (ADE) support** | Enrollment | macOS | Can support the enrollment and configuration of iOS/iPadOS devices using Device Enrollment |
| **Automated Device Enrollment (ADE) support** | Enrollment | iOS/iPadOS | Same, but for iOS/iPadOS devices |
| **Admin-created ADE Package support** | Enrollment | macOS | Allows admins to provide arbitrary executable code (e.g. contained in a package) to be delivered at time of ADE enrollment |
| **ADE Automatic User Creation from Identity Provider (IdP), like OIDC, Entra ID, Okta, Google Workspace,etc)** | Enrollment | macOS | The MDM can mark or designate a device as being associated with a user account in the external database |
| **Directory Integration - Okta** | Configuration | Server Infrastructure | Can integrate and sync with Okta for at least some group member visibilty and user authentication |
| **Directory Integration - Google Workspace ** | Configuration | Server Infrastructure | Same as above, but with Google Workspace as the external user/group database |
| **Directory Integration - Microsoft Entra ID** | Configuration | Server Infrastructure | Same as above, but with Microsoft Entra |
| **Admin Portal - SSO Login** | Identity | Server Infrastructure | Admin inteface supports SSO login via IdP like SAML, OAuth |
| **Login Window replacement with IdP** | Identity | macOS | Has offering to replace the native macOS login window with one integrated with an IdP |
| **IdP Password Sync with local account** | Identity | macOS | Has offering to sync passwords from an IdP with the local macOS user account |
| **Extension Attributes or equivalent** | Inventory | Server Infrastructure | Can at least display arbitrary inventory criteria, e.g. by enabling the running of custom code |  
| **Migration agent or package from previous MDM** | Migration | macOS | Provides meaningful end-user facing assistance to migrate devices from another MDM |
| **OS Updates** | OS Update | macOS | Can send commands that force devices to new minor or major macOS versions |
| **OS Updates** | OS Update | iOS/iPadOS | Same, but for iOS/iPadOS versions |
| **OS Updates** | OS Update | tvOS | Sames, but for tvOS versions |
| **Admin Portal - Custom Access Roles (RBAC)** | Configuration | Server Infrastructure | Can allow/restrict R/W access to admin portal features granularly |
| **Admin Portal - Pre-configured Roles (RBAC)** | Configuration | Server Infrastructure | Abstraction of groups in MDM can allow/restrict collections of features |
| **Reporting - Built in to Admin Portal (no need to export data for manipulation)** | Reporting | Server Infrastructure | Basic reasonable configurations or modifications to display data like e.g. sorting columns are built-in | 
| **Reporting - Customize within Admin Portal** | Reporting | Server Infrastructure | The ability to configure high-level metrics or visualizations of the data for optimized decision making can be stored as at least a single user preference |
| **Local Admin Password Solution (LAPS)** | Security | macOS | Can manage rotation of local admin account passwords |
| **Baselines (Hardening) Pre-built configs** | Compliance | Server Infrastructure | Regulated industry compliance/security-related baseline configurations are built-in and can be applied to device groups without significant admin effort |
| **Compliance Control** | Compliance | Server Infrastructure | Explicit capabilities in agent to continuously enforce compliance controls |
| **Security Templates** | Security | Server Infrastructure | Foundational set of controls are built-in, distinguished as being good basic security hygiene for non-personal devices but not as strict as a regulated industry would demand | 
| **Sandbox instance** | Sandbox | Server Infrastructure | (Within reason) has offering that supports/provides access to evaluating stable functionality and/or preview new releases with a resonable approximation of 'production' configs/resources |
| **Microsoft Conditional Access support** | Security | Server Infrastructure | Can assist in enabling and enforcing Microsoft conditional access policies |
| **Okta Device Trust support** | Security | Server Infrastructure | Can assist in enabling and enforcing device trust policies from Okta |
| **Other conditional access support** | Security | Server Infrastructure | Either supports other 3rd parties or significantly enables similar policy engine-style access controls |
