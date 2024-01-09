___
> Check out my Blog that started this all: [Evaluating Apple MDM Products | SysManSquad](https://sysmansquad.com/2022/05/03/2022-05-03-evaluating-apple-mdm-products)
___


# Simple table comparing some basic features of Apple MDM products


<div align="right">
Key
<table>
    <tr>
        <td>:white_check_mark:</td>
        <td>Yes</td>
    </tr>
    <tr>
        <td>:x:</td>
        <td>No</td>
    </tr>
    <tr>
        <td>:grey_exclamation:</td>
        <td>Maybe or Partial</td>
    </tr>
    <tr>
        <td>:heavy_minus_sign:</td>
        <td>Not Applicable</td>
    </tr>
    <tr>
        <td>:grey_question:</td>
        <td>Unknown or Unclear</td>
    </tr>
    <tr>
        <td>:asterisk:</td>
        <td>Additional Requirements Needed</td>
    </tr>
    <tr>
        <td>:heavy_dollar_sign:</td>
        <td>Additional Cost on top of base licensing</td>
    </tr>
    <tr>
        <td>macOS</td>
        <td>Feature for macOS</td>
    </tr>
    <tr>
        <td>iOS/iPadOS</td>
        <td>Feature for iOS flavors: iPhoneOS, iPadOS, iPodOS</td>
    </tr>
    <tr>
        <td>tvOS</td>
        <td>Feature for tvOS (Apple TV)</td>
    </tr>
    <tr>
        <td>Server Infrastructure</td>
        <td>Infrastructure feature, not OS-specific</td>
    </tr>
    <tr>
        <td>watchOS</td>
        <td>Feature for watchOS (Apple Watch)</td>
    </tr>
    <tr>
        <td>visionOS</td>
        <td>Feature for visionOS (Apple Vision Pro)</td>
    </tr>
</table>
</div>

<table>
    <tr>
        <th>Feature</th>
        <th>Category</th>
        <th>OS</th>
        <td>Meraki SM</td>
        <td>Jamf</td>
        <td>Kandji</td>
        <td>Mosyle</td>
        <td>Addigy</td>
        <td>JumpCloud</td>
        <td>Intune</td>
    </tr>
    <tr>
        <td>Local agent/binary</td>
        <td>Agent</td>
        <td>macOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>CLI for local agent/binary</td>
        <td>Agent</td>
        <td>macOS</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Native Teams Integration</td>
        <td>Alerts</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:grey_exclamation::asterisk::heavy_dollar_sign:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Native Slack Integration</td>
        <td>Alerts</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:grey_exclamation::asterisk::heavy_dollar_sign:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Email Alerts</td>
        <td>Alerts</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark::asterisk:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Generic Outgoing Webhook</td>
        <td>Alerts</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>EDR/Antivirus product</td>
        <td>Antivirus</td>
        <td>macOS</td>
        <td>:grey_question:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:x:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
    </tr>
    <tr>
        <td>EDR/Antivirus product</td>
        <td>Antivirus</td>
        <td>iOS/iPadOS</td>
        <td>:grey_question:</td>
        <td></td>
        <td>:x:</td>
        <td></td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
    </tr>
    <tr>
        <td>Self Service App</td>
        <td>App Delivery</td>
        <td>macOS</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Self Service App</td>
        <td>App Delivery</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Custom Cloud Content Distribution Network (CDN)</td>
        <td>Content Delivery</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Custom On-Premises Content Distribution</td>
        <td>Content Delivery</td>
        <td>Server Infrastructure</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td></td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Apple Business Manager (ABM) VPP Token</td>
        <td>Apple Business Manager</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Custom Configuration Profile support</td>
        <td>Configuration</td>
        <td>macOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Custom Configuration Profile support</td>
        <td>Configuration</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Built-in Notifications to end-user</td>
        <td>App Update</td>
        <td>macOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Built-in Notifications to end-user</td>
        <td>App Update</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Forced App Installs (within MDM limitations)</td>
        <td>App Delivery</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Forced App Installs (within MDM limitations)</td>
        <td>App Delivery</td>
        <td>macOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Forced App Updates (within MDM limitations)</td>
        <td>App Update</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Forced App Updates (within MDM limitations)</td>
        <td>App Update</td>
        <td>macOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Declarative Device Management support</td>
        <td>Device Management</td>
        <td>macOS</td>
        <td>:grey_question:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Declarative Device Management support</td>
        <td>Device Management</td>
        <td>iOS/iPadOS</td>
        <td>:grey_question:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Declarative Device Management support</td>
        <td>Device Management</td>
        <td>watchOS</td>
        <td>:grey_question:</td>
        <td></td>
        <td></td>
        <td></td>
        <td>:x:</td>
        <td>:x:</td>
        <td></td>
    </tr>
    <tr>
        <td>Declarative Device Management support</td>
        <td>Device Management</td>
        <td>visionOS</td>
        <td>:grey_question:</td>
        <td></td>
        <td></td>
        <td></td>
        <td>:x:</td>
        <td>:x:</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple TV support</td>
        <td>Apple TV</td>
        <td>tvOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple Watch support</td>
        <td>Apple Watch</td>
        <td>watchOS</td>
        <td></td>
        <td></td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple Vision Pro support</td>
        <td>Apple Vision Pro</td>
        <td>visionOS</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>:x:</td>
        <td>:x:</td>
        <td></td>
    </tr>
    <tr>
        <td>API - Public Documentation</td>
        <td>Automation</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>API - REST standards</td>
        <td>Automation</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>API - Swagger Documentation</td>
        <td>Automation</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:grey_exclamation:</td>
    </tr>
    <tr>
        <td>API - Non-standard</td>
        <td>Automation</td>
        <td>Server Infrastructure</td>
        <td></td>
        <td></td>
        <td></td>
        <td>:white_check_mark:</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Offline mode (cached enforcement by local agent/binary separate from Config Profiles)</td>
        <td>Agent</td>
        <td>macOS</td>
        <td></td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:grey_exclamation:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Blueprint Configuration framework</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td></td>
        <td>:x:</td>
        <td></td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Device Groups - Attribute-based  membership - Automatic updates</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:grey_exclamation:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:grey_exclamation:</td>
    </tr>
    <tr>
        <td>Device Groups - Attribute-based  membership - Interval  updates</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>User Groups - Attribute-based  membership - Automatic updates</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td></td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>User Groups - Attribute-based  membership - Interval  updates</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td></td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>User Groups - Directory Service group membership</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Shared iPad Mode support</td>
        <td>Shared iPad Mode</td>
        <td>iPadOS</td>
        <td>:grey_exclamation: Education only</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>App Lock - Single App Mode</td>
        <td>Configuration</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Custom Scripts deployed from Admin Portal</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Restrictions - App Block List</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
    </tr>
    <tr>
        <td>Supervise Device</td>
        <td>Configuration</td>
        <td>macOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Supervise Device</td>
        <td>Configuration</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Apple Business Manager (ABM) MDM Token</td>
        <td>Apple Business Manager</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Automated Device Enrollment (ADE) support</td>
        <td>Enrollment</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Automated Device Enrollment (ADE) support</td>
        <td>Enrollment</td>
        <td>macOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>ADE Package support</td>
        <td>Enrollment</td>
        <td>macOS</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>ADE Automatic User Creation from Identity Provider (IdP), like OIDC, Entra ID, Okta, Google Worksapce,etc)</td>
        <td>Enrollment</td>
        <td>macOS</td>
        <td></td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Directory Integration - Okta</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark: SCIM</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Directory Integration - Google Workspace </td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Directory Integration - Microsoft Entra ID</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Admin Portal - SSO Login</td>
        <td>Identity</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Login Window replacement with IdP</td>
        <td>Identity</td>
        <td>macOS</td>
        <td>:x:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>IdP Password Sync with local account</td>
        <td>Identity</td>
        <td>macOS</td>
        <td>:x:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Extension Attributes or equivalent</td>
        <td>Inventory</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Migration agent or package from previous MDM</td>
        <td>Migration</td>
        <td>macOS</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:grey_exclamation:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>OS Updates</td>
        <td>OS Update</td>
        <td>iOS/iPadOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>OS Updates</td>
        <td>OS Update</td>
        <td>macOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>OS Updates</td>
        <td>OS Update</td>
        <td>tvOS</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td></td>
    </tr>
    <tr>
        <td>Admin Portal - Custom Access Roles (RBAC)</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Admin Portal - Pre-configured Roles (RBAC)</td>
        <td>Configuration</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Reporting - Built in to Admin Portal (no need to export data for manipulation)</td>
        <td>Reporting</td>
        <td>Server Infrastructure</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Reporting - Customize within Admin Portal</td>
        <td>Reporting</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:grey_exclamation:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark::heavy_dollar_sign:</td>
    </tr>
    <tr>
        <td>Built-In - Local Admin Password Solution (LAPS)</td>
        <td>Security</td>
        <td>macOS</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Baselines (Hardening) Pre-built configs</td>
        <td>Compliance</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Compliance Control</td>
        <td>Compliance</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Security Templates</td>
        <td>Security</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Sandbox instance</td>
        <td>Sandbox</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td></td>
        <td>:grey_exclamation:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Microsoft Conditional Access support</td>
        <td>Security</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td></td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Okta Device Trust support</td>
        <td>Security</td>
        <td>Server Infrastructure</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td></td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Other conditional access support</td>
        <td>Security</td>
        <td>Server Infrastructure</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td></td>
    </tr>
</table>
