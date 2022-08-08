# Simple chart comparing some basic features of Apple MDM products

<table>
    <tr>
        <td>Name</td>
        <td>Catagory</td>
        <td>Meraki SM</td>
        <td>Jamf</td>
        <td>Kandji</td>
        <td>Mosyle</td>
        <td>Addigy</td>
    </tr>
    <tr>
        <td>macOS - Local Agent</td>
        <td>Agent</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>macOS - Local Agent Binary commands</td>
        <td>Agent</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Slack Integration</td>
        <td>Alerts</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Email Alerts - Requires additional infrastructure</td>
        <td>Alerts</td>
        <td>:x:</td>
        <td>:grey_exclamation: Needs SMTP relay server setup</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Outgoing Webhook</td>
        <td>Alerts</td>
        <td>:x:</td>
        <td>:white_check_mark: JSON format not natively configured for Slack or Teams</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Outgoing Webhook - Requires additional infra for Slack</td>
        <td>Alerts</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Email Alerts - Native</td>
        <td>Alerts</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>In-House AV</td>
        <td>Antivirus</td>
        <td>:x:</td>
        <td>:white_check_mark: Additional cost</td>
        <td>:x:</td>
        <td>:white_check_mark: Included with Fuse</td>
        <td>:white_check_mark: Additional cost</td>
    </tr>
    <tr>
        <td>Self Service App - macOS</td>
        <td>App Delivery</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Custom Apps - Content Distribution</td>
        <td>App Delivery</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>ABM Apps (fka VPP)</td>
        <td>App Delivery</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>App Configure - app settings (force SSO, etc)</td>
        <td>App Delivery</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Custom Apps</td>
        <td>App Delivery</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:grey_exclamation: Custom apps need external blob storage</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Self Service App - iOS</td>
        <td>App Delivery</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>App Updates - macOS - Notifications without 3rd party script</td>
        <td>App Update</td>
        <td>:x:</td>
        <td>:x: Use Nudge app</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>App Updates - iOS - Forced</td>
        <td>App Update</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>App Updates - iOS - Self Service</td>
        <td>App Update</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>App Updates - macOS - Forced</td>
        <td>App Update</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>App Updates - macOS - Self Service</td>
        <td>App Update</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>App Updates - iOS - Scheduled or Maintenance Window</td>
        <td>App Update</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>App Updates - macOS - Scheduled or Maintenance Window</td>
        <td>App Update</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>API</td>
        <td>Automation</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark: Unconventional setup - all PUT methods; Limited Endpoints</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Offline mode (cached enforcement)</td>
        <td>Configuration</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark: Keeps local cache of configs for continuous enforcement while offline</td>
        <td>:x:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>Pre-Built Configs/Policies</td>
        <td>Configuration</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Device Groups - Attribute-based automatic membership</td>
        <td>Configuration</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Shared iPad support</td>
        <td>Configuration</td>
        <td>:grey_exclamation: Educaion only</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
    </tr>
    <tr>
        <td>App Lock - iPad single mode app</td>
        <td>Configuration</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Custom Scripts (without pkg workaround)</td>
        <td>Configuration</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Remediate Configurations</td>
        <td>Configuration</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>App Block List</td>
        <td>Configuration</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Configuration Profiles</td>
        <td>Configuration</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Supervise Device</td>
        <td>configuration</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Role-Based Apps, Controls, Automations (Blueprints)</td>
        <td>Enrollment</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>ABM Integration</td>
        <td>Enrollment</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>DEP/ADE</td>
        <td>Enrollment</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Zero-Touch Deployment</td>
        <td>Enrollment</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Directory Integration - Okta</td>
        <td>Identity</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Directory Integration - Google Workspace </td>
        <td>Identity</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Admin Portal - SSO Login</td>
        <td>Identity</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>macOS - Password Sync IdP (Okta)&lt;-&gt;Local User Account</td>
        <td>Identity</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>macOS - SSO Login</td>
        <td>Identity</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Extension Attributes or equivalent</td>
        <td>Inventory</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>macOS - Migration agent from old MDM</td>
        <td>Migration</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>OS Updates - iOS/mobile</td>
        <td>OS Update</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>OS Updates - mac</td>
        <td>OS Update</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>OS Updates - mac - Managed (pre-configured)</td>
        <td>OS Update</td>
        <td>:x:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>AppleTV (tvOS) support</td>
        <td>Other</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Auditor access</td>
        <td>RBAC - Roles</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Reporting - Built-In</td>
        <td>Reporting</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Reporting - Custom</td>
        <td>Reporting</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Built-In - Local Admin Password Solution (LAPS)</td>
        <td>Security &amp; Compliance</td>
        <td>:x:</td>
        <td>:x: have to use macOSLAPS</td>
        <td>:x: pw can be manually changed, but no way to retrieve pw without custom script to write pw to log file</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Baselines (Hardening) Pre-built configs</td>
        <td>Security &amp; Compliance</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Compliance Control</td>
        <td>Security &amp; Compliance</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
    <tr>
        <td>Security Templates</td>
        <td>Security &amp; Compliance</td>
        <td>:x:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
        <td>:white_check_mark:</td>
    </tr>
</table>
