# Simple table showing networking requirements for managing Apple devices

NOTE: This is not all-encompassing.

## Vendors & Products present
* Apple
    * Apple Business|School Manager
    * Apple Business Essentials
    * Apple IDs
    * Managed Apple IDs
    * Single Sign-On
    * Software Updates
* Jamf
    * Jamf Pro (cloud and on-prem)
    * Jamf Infrastructure Manager
    * SCCM Plug-in
    * Single Sign-On
* Microsoft
    * Microsoft 365 Apps (Office)
    * Single Sign-On
    * Tenant Restrictions

## Networking Requirements Table
### This table is wiiiiiiiiiiiide -->

<table>
    <tr>
        <td>Vendor</td>
        <td>Category</td>
        <td>Hosts</td>
        <td>Ports</td>
        <td>Protocol</td>
        <td>OS</td>
        <td>Description</td>
        <td>Connections Initiated</td>
        <td>Supports proxies</td>
        <td>Must be exempt from SSL/HTTPS Inspection?</td>
        <td>Documentation Link</td>
        <td>Additional Info</td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Additional content</td>
        <td>audiocontentdownload.apple.com</td>
        <td>80, 443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>GarageBand downloadable content</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Additional content</td>
        <td>playgrounds-assets-cdn.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS, macOS</td>
        <td>Swift Playgrounds</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Additional content</td>
        <td>playgrounds-cdn.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS, macOS</td>
        <td>Swift Playgrounds</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Additional content</td>
        <td>devimages-cdn.apple.com</td>
        <td>80, 443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>Xcode downloadable components</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Additional content</td>
        <td>download.developer.apple.com</td>
        <td>80, 443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>Xcode downloadable components</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Additional content</td>
        <td>sylvan.apple.com</td>
        <td>80, 443</td>
        <td>TCP</td>
        <td>tvOS only</td>
        <td>Apple TV screen savers</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>App features</td>
        <td>*.appattest.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>App validation, Touch ID and Face ID authentication for websites</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>App features</td>
        <td>api.apple-cloudkit.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>App notarization</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>App Store</td>
        <td>.itunes.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Store content such as apps, books, and music</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>App Store</td>
        <td>*.apps.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Store content such as apps, books, and music</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>App Store</td>
        <td>*.mzstatic.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Store content such as apps, books, and music</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>App Store</td>
        <td>itunes.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>—</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>App Store</td>
        <td>ppq.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Enterprise App validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Essentials device management</td>
        <td>*.apple-mapkit.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>View the location of devices in Managed Lost Mode</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Essentials device management</td>
        <td>axm-app.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>View and manage apps and devices</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Essentials device management</td>
        <td>axm-adm-enroll.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>DEP enrollment server</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Essentials device management</td>
        <td>axm-adm-mdm.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>MDM server</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Essentials device management</td>
        <td>axm-adm-scep.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>SCEP server</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Essentials device management</td>
        <td>icons.axm-usercontent-apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>Custom Package icons</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>upload.appleschoolcontent.com</td>
        <td>22</td>
        <td>SSH</td>
        <td>-</td>
        <td>SFTP uploads</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>*.business.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>-</td>
        <td>Apple Business Manager</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>*.itunes.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>-</td>
        <td>Apps and Books</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>*.mzstatic.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>-</td>
        <td>Apps and Books</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>*.school.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>-</td>
        <td>Apple School Manager</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>*.vertexsmb.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>-</td>
        <td>Validating tax-exempt status</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>api.edu.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>-</td>
        <td>Apps and Books (ASM)</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>api.ent.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>-</td>
        <td>Apps and Books (ABM)</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>appleid.cdn-apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>-</td>
        <td>Login authentication</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>idmsa.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>-</td>
        <td>Login authentication</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>statici.icloud.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>-</td>
        <td>Device icons</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager</td>
        <td>www.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>-</td>
        <td>Fonts for certain languages</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple Business Manager and Apple School Manager - Managed Apple Apple IDs</td>
        <td>ws-ee-maidsvc.icloud.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>User lookup service</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple diagnostics</td>
        <td>diagassets.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Used by Apple devices to help detect possible hardware issues</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple ID</td>
        <td>appleid.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Apple ID authentication in Settings and System Preferences</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple ID</td>
        <td>appleid.cdn-apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Apple ID authentication in Settings and System Preferences</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple ID</td>
        <td>gsa.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Apple ID authentication</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Apple ID</td>
        <td>idmsa.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Apple ID authentication</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Associated Domains</td>
        <td>app-site-association.cdn-apple.com</td>
        <td>443</td>
        <td>TCP, UDP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Associated domains for universal links</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Associated Domains</td>
        <td>app-site-association.networking.apple</td>
        <td>443</td>
        <td>TCP, UDP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Associated domains for universal links</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Beta updates</td>
        <td>cssubmissions.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Used by Feedback Assistant to upload files</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Beta updates</td>
        <td>fba.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Used by Feedback Assistant to file and view feedback</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Beta updates</td>
        <td>bpapi.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, watchOS, macOS</td>
        <td>Beta update enrollment</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Carrier updates</td>
        <td>appldnld.apple.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>Cellular carrier bundle updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Carrier updates</td>
        <td>appldnld.apple.com.edgesuite.net</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>Cellular carrier bundle updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Carrier updates</td>
        <td>itunes.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>Carrier bundle update discovery</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Carrier updates</td>
        <td>itunes.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>Carrier bundle update discovery</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Carrier updates</td>
        <td>updates-http.cdn-apple.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>Cellular carrier bundle updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Carrier updates</td>
        <td>updates.cdn-apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>Cellular carrier bundle updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>certs.apple.com</td>
        <td>80, 443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>crl.apple.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>crl.entrust.net</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>crl3.digicert.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>crl4.digicert.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>ocsp.apple.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>ocsp.digicert.cn</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation in China</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>ocsp.digicert.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>ocsp.entrust.net</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>ocsp2.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Certificate validation</td>
        <td>valid.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Certificate validation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Classroom and Schoolwork</td>
        <td>cls-ingest.itunes.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS only</td>
        <td>Schoolwork handout service</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Classroom and Schoolwork</td>
        <td>cls-iosclient.itunes.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS only</td>
        <td>Schoolwork handout service</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Classroom and Schoolwork</td>
        <td>pg-bootstrap.itunes.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS only</td>
        <td>Schoolwork handout service</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Classroom and Schoolwork</td>
        <td>play.itunes.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS, macOS</td>
        <td>Classroom and Schoolwork device verification</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Classroom and Schoolwork</td>
        <td>s.mzstatic.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS, macOS</td>
        <td>Classroom and Schoolwork device verification</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Classroom and Schoolwork</td>
        <td>ws-ee-maidsvc.icloud.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS, macOS</td>
        <td>Classroom and Schoolwork class roster service</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Classroom and Schoolwork</td>
        <td>ws.school.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iPadOS, macOS</td>
        <td>Classroom and Schoolwork class roster service</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Content caching - Client</td>
        <td>lcdn-locator.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Content caching locator service</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Content caching - Client</td>
        <td>serverstatus.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>Content caching client public IP determination</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Content caching - Server</td>
        <td>lcdn-registration.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>Server registration</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Content caching - Server</td>
        <td>suconfig.apple.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>Configuration</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Content caching - Server</td>
        <td>xp-cdn.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>Reporting</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>setup.icloud.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>Required to log in with a Managed Apple ID on Shared iPad</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>*.push.apple.com</td>
        <td>443, 80, 5223, 2197</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Push notifications</td>
        <td>Apple Endpoint <-> Device</td>
        <td>-</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td>https://support.apple.com/en-bh/HT210060#apns</td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>deviceenrollment.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>DEP provisional enrollment</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>deviceservices-external.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>—</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>gdmf.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Used by an MDM server to identify which software updates are available to devices that use managed software updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>identity.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>APNs certificate request portal</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>iprofiles.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Hosts enrollment profiles used when devices enroll in Apple School Manager or Apple Business Manager through Device Enrollment</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>mdmenrollment.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>MDM servers to upload enrollment profiles used by clients enrolling through Device Enrollment in Apple School Manager or Apple Business Manager, and to look up devices and accounts</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device management</td>
        <td>vpp.itunes.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>MDM servers to perform operations related to Apps and Books, like assigning or revoking licenses on a device</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>sq-device.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS</td>
        <td>eSIM activation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>time-ios.apple.com</td>
        <td>123</td>
        <td>UDP</td>
        <td>iOS, iPadOS, tvOS</td>
        <td>Used by devices to set their date and time</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>albert.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Device activation</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>captive.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Internet connectivity validation for networks that use captive portals</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>gs.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>—</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>humb.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>—</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>static.ips.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>—</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>tbsc.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>—</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>time.apple.com</td>
        <td>123</td>
        <td>UDP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Used by devices to set their date and time</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Device setup</td>
        <td>time-macos.apple.com</td>
        <td>123</td>
        <td>UDP</td>
        <td>macOS only</td>
        <td>Used by devices to set their date and time</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Domain Name System resolution</td>
        <td>doh.dns.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Used for DNS over HTTPS (DoH)</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>mask-api.icloud.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>iCloud Private Relay</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>mask-h2.icloud.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>iCloud Private Relay</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>mask.icloud.com</td>
        <td>443</td>
        <td>UDP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>iCloud Private Relay</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.apple-cloudkit.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.apple-livephotoskit.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.apzones.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services in China</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.cdn-apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.gc.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.icloud-content.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.icloud.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.icloud.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.icloud.com.cn</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iCloud services in China</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>iCloud</td>
        <td>*.iwork.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>iWork documents</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Siri and search</td>
        <td>*.smoot.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Search services, including Siri, Spotlight, Lookup, Safari, News, Messages and Music</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Siri and search</td>
        <td>guzzoni.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Siri and dictation requests</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>updates-http.cdn-apple.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Software update downloads</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>updates.cdn-apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>Software update downloads</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>xp.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, macOS</td>
        <td>—</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>gdmf.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, watchOS, macOS</td>
        <td>Software update catalog</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>gg.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, watchOS, macOS</td>
        <td>iOS, iPadOS, tvOS, watchOS, and macOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>gs.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, watchOS, macOS</td>
        <td>iOS, iPadOS, tvOS, watchOS, and macOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>mesu.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, tvOS, watchOS, macOS</td>
        <td>Hosts software update catalogs</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>appldnld.apple.com</td>
        <td>80</td>
        <td>TCP</td>
        <td>iOS, iPadOS, watchOS</td>
        <td>iOS, iPadOS, and watchOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>ns.itunes.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS, iPadOS, watchOS</td>
        <td>—</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>configuration.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>Rosetta 2 updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>ig.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>macOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>oscdn.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>macOS Recovery</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>osrecovery.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>macOS Recovery</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>skl.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>macOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>swcdn.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>macOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>swdist.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>macOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>swdownload.apple.com</td>
        <td>443, 80</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>macOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Software updates</td>
        <td>swscan.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>macOS only</td>
        <td>macOS updates</td>
        <td>Apple Endpoint <-> Device</td>
        <td>—</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Tap to Pay on iPhone</td>
        <td>humb.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS only</td>
        <td>Tap to Pay on iPhone setup</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Tap to Pay on iPhone</td>
        <td>phonesubmissions.apple.com</td>
        <td>443</td>
        <td>TCP</td>
        <td>iOS only</td>
        <td>Optional analytics sharing</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Apple</td>
        <td>Tap to Pay on iPhone</td>
        <td>pos-device.apple.com</td>
        <td>443</td>
        <td>TCP, UDP</td>
        <td>iOS only</td>
        <td>Tap to Pay on iPhone</td>
        <td>Apple Endpoint <-> Device</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://support.apple.com/en-bh/HT210060</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Administrator Workstation Connections (outbound)</td>
        <td>client device</td>
        <td>548, 445</td>
        <td>AFP/SMB</td>
        <td>iOS, iPadOS, macOS</td>
        <td>The Jamf Admin application can upload new software packages to AFP or SMB distribution points.</td>
        <td>Jamf Admin to distribution points</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Administrator Workstation Connections (outbound)</td>
        <td>client device</td>
        <td>8443, 443</td>
        <td>HTTPS</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Administrators perform management tasks by logging in to the Jamf Pro server using a web browser and the Jamf Pro apps (Jamf Admin). When the default settings are used, on-premise Jamf Pro servers use port 8443, and Jamf Cloud-hosted servers use port 443.</td>
        <td>Administrator workstations to the Jamf Pro server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf AD CS Connector Connections</td>
        <td>Jamf ADCS Server</td>
        <td>135 and 49152-65535</td>
        <td>DCOM</td>
        <td>Windows</td>
        <td>The Jamf AD CS Connector uses Microsoft Distributed Component Object Model (DCOM) to communicate with AD CS.</td>
        <td>Jamf AD CS Connector to AD CS</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf AD CS Connector Connections</td>
        <td>Jamf ADCS Server</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>Windows</td>
        <td>Jamf Pro sends certificate signing requests and retrieves completed certificates by opening a connection to the Jamf AD CS Connector, typically on TCP port 443.</td>
        <td>Jamf Pro to Jamf AD CS Connector</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf AD CS Connector Connections</td>
        <td>Jamf ADCS Server</td>
        <td>8443, 443</td>
        <td>HTTPS</td>
        <td>Windows</td>
        <td>If your organization uses in-house apps developed with the Jamf Certificate SDK, connections to the Jamf Pro server will be via HTTPS. When default settings are used, on-premise Jamf Pro servers use port 8443, and Jamf Cloud-hosted servers use port 443.</td>
        <td>Mobile device apps to the Jamf Pro server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Infrastructure Manager - Healthcare Listener Connections</td>
        <td>JIM Server</td>
        <td>2575</td>
        <td>HL7</td>
        <td>Windows</td>
        <td>2575 is an assigned port that can be used for HL7 communications, but the Healthcare Listener can be configured to use any preferred port 1024 or greater.</td>
        <td>HL7 interface to Jamf Infrastructure Manager host</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Infrastructure Manager - Healthcare Listener Connections</td>
        <td>JIM Server</td>
        <td>8443, 443</td>
        <td>HTTPS</td>
        <td>Windows</td>
        <td>The Healthcare Listener informs the Jamf Pro Management Server when an action is needed on a device. When the default settings are used, on-premise Jamf Pro servers use port 8443, and Jamf Cloud-hosted servers use port 443.</td>
        <td>Jamf Infrastructure Manager host to the Jamf Pro server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Infrastructure Manager - LDAP Proxy Connections</td>
        <td>JIM Server</td>
        <td>8081</td>
        <td>HTTP</td>
        <td>Windows</td>
        <td>The LDAP Proxy service can expose this port to enable Healthcheck endpoint for verification of LDAP Proxy Server status. The default port is 8081 but can be changed by your administrator.</td>
        <td>External service to Jamf Infrastructure Manager host</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Infrastructure Manager - LDAP Proxy Connections</td>
        <td>JIM Server</td>
        <td>8443, 443</td>
        <td>HTTPS</td>
        <td>Windows</td>
        <td>Jamf Infrastructure Manager instances connect to the Jamf Pro server when they are enrolled and periodically thereafter to confirm their operating status and retrieve updated settings. When the default settings are used, on-premise Jamf Pro servers use port 8443, and Jamf Cloud-hosted servers use port 443.</td>
        <td>Jamf Infrastructure Manager host to the Jamf Pro server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Infrastructure Manager - LDAP Proxy Connections</td>
        <td>JIM Server</td>
        <td>389, 636</td>
        <td>LDAP or LDAPS</td>
        <td>Windows</td>
        <td>The LDAP Proxy service receives lookup requests from the Jamf Pro server and forwards them to the directory service you have configured in Jamf Pro's LDAP settings. LDAP typically runs on port 389. If you encrypt your LDAP communications (e.g., LDAP over SSL/LDAPS), port 636 is commonly used. Your directory services administrator can tell you which port is used in your environment.</td>
        <td>Jamf Infrastructure Manager/LDAP Proxy to LDAP server/Domain controller</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Infrastructure Manager - LDAP Proxy Connections</td>
        <td>JIM Server</td>
        <td>8389, 8636</td>
        <td>LDAP or LDAPS</td>
        <td>Windows</td>
        <td>All Jamf Pro LDAP lookups are sent via the Jamf Pro server. Jamf Pro can be configured to send LDAP queries to a Jamf Infrastructure Manager LDAP Proxy instance rather than directly to an LDAP host. The port on which the LDAP Proxy will listen for these incoming requests is configured when enrolling with the Jamf Pro server. On Linux, the port chosen should be at least 1024 because lower-numbered ports are reserved for more privileged services and users. Port 8389 might be chosen if running on LDAP, or port 8636 if running on LDAPS.</td>
        <td>Jamf Pro server to the Jamf Infrastructure Manager host</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (inbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>80, 8080, 443</td>
        <td>HTTP or HTTPS</td>
        <td>-</td>
        <td>Some advanced installations may include a load balancer or reverse proxy. In this case, the Jamf Pro server URL’s host name will resolve to the IP address of the proxy. If SSL is terminated at the proxy, traffic is forwarded to the Jamf Pro server over HTTP (typical ports are 80/8080). Or, traffic may be re-encrypted or passed using HTTPS (often over port 443.</td>
        <td>Load balancer or proxy to the Jamf Pro server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (inbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>8443 or 443</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>Connections to the Jamf Pro web app use HTTPS. When default settings are used, on-premise Jamf Pro servers use port 8443, and Jamf Cloud-hosted servers use port 443.<br>Note: HTTPS Interception (SSL Inspection) is not supported for connections to Jamf Pro. If client HTTPS traffic traverses a web proxy, you must disable HTTPS Interception for connections to Jamf Pro.</td>
        <td>Managed computers or mobile devices, administrator workstations, and other services to the Jamf Pro server</td>
        <td>Yes</td>
        <td>Yes</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>80</td>
        <td>HTTP</td>
        <td>-</td>
        <td>App Store app information can be retrieved from the App Store.</td>
        <td>Jamf Pro server to Apple</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>80, 443</td>
        <td>HTTP or HTTPS</td>
        <td>-</td>
        <td>The Jamf Pro server connects to Pendo if Engage is enabled in Jamf Pro. Jamf Engage data is compressed to approximately 100KB and loads asynchronously. Data is securely transmitted via SSL and each transmission is less than 2KB.</td>
        <td>Jamf Pro server to *.jamfcloud.com</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>80, 443</td>
        <td>HTTP or HTTPS</td>
        <td>-</td>
        <td>The Jamf Pro server connects to Microsoft via the Microsoft Graph API if the connection between Jamf Pro and Microsoft Intune is configured. For more information, see the following documentation from Microsoft: Network endpoints for Microsoft Intune</td>
        <td>Jamf Pro server to the following domains:<br>login.microsoftonline.com<br>graph.microsoft.com<br>*.manage.microsoft.com</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>80, 443</td>
        <td>HTTP or HTTPS</td>
        <td>-</td>
        <td>If you are deploying SCEP certificate configuration profiles with a dynamic challenge, or using Jamf Pro's SCEP proxy services, the Jamf Pro server connects to your SCEP Enrollment server to obtain an enrollment challenge password and/or retrieve generated certificates on behalf of managed devices.<br>Note: In a clustered environment, requests related to the SCEP Proxy are handled by the web app that receives the request. Therefore, it is important that all web apps are able to communicate with the configured SCEP service.</td>
        <td>Jamf Pro server to SCEP Enrollment server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>The Jamf Pro server can integrate with Apple-hosted services such as Device Enrollment (formerly Device Enrollment Program), Volume Purchasing (formerly Volume Purchase Program), and Global Service Exchange (GSX).</td>
        <td>Jamf Pro server to Apple</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>The Jamf Pro server can access hosted schema to populate Application & Custom Settings options.</td>
        <td>Jamf Pro server to prod-custom-setting-schemas.s3.amazonaws.com</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>The Jamf Pro server can connect to Jamf-hosted utilities and services including:<br>Retrieving information about newly released software and version updates from Jamf's patch reporting database, hosted at https://jamf-patch.jamfcloud.com/<br>Apple Push Notification certificate signing requests (CSR)<br>Customer Experience Metrics information submitted to Jamf (optional)<br>Jamf Push Proxy communication with Jamf Self Service for iOS<br>Retrieving information from Jamf's hardware model name service, hosted at https://hw-model-names.services.jamfcloud.com (if configured)</td>
        <td>Jamf Pro server to *.jamfcloud.com and *.jamf.com</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>The Jamf Pro server connects to Jamf-hosted services via the Cloud Services Connection.</td>
        <td>Jamf Pro server to the following domains:<br>https://csa.services.jamfcloud.com<br>https://ics.services.jamfcloud.com</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>A cloud distribution point (Amazon S3 or CloudFront, Akamai, RackSpace, or Jamf Cloud Distribution Service) can be used to host your software packages for distribution to managed clients. The Jamf Pro server connects to these services to perform initial configuration, to upload packages added via the Jamf Pro web app or Jamf Admin, and as needed to request content access tokens and URL signatures.</td>
        <td>Jamf Pro server to cloud hosting provider</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>Jamf Pro can be configured to send webhook notifications for a variety of events (device enrollment, inventory updates, etc.) to support workflow automation and data integrations.</td>
        <td>Jamf Pro server to event listener application server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>The Jamf Pro server connects to TeamViewer via TeamViewer API if connection between Jamf Pro and TeamViewer is configured. For more information, see TeamViewer Integration in the Jamf Pro Documentation</td>
        <td>-</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>2195, 2196</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>Ports 2195/2196 are used only for legacy binary Apple Push Notification (APNs) service protocol until Jamf Pro deprecates the binary protocol or Apple no longer supports it. Notifications are sent to Apple on port 2195 and delivery feedback is solicited on port 2196.</td>
        <td>Jamf Pro server to Apple APNs 17/8 IP range</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>443, 2197</td>
        <td>HTTPS</td>
        <td>-</td>
        <td>The Jamf Pro server uses Apple Push Notification service (APNs) to prompt managed devices to check in for mobile device management (MDM). Port 443 is used by default for the HTTP/2 connections. Port 2197 can be used only in on-premise environments.<br>Note: Allow outbound connections to and redirects from Apple's 17.0.0.0/8 block over TCP port 5223 / 443 from all client networks and on port 2197, where applicable, from Jamf Pro servers to ensure APNs will function correctly on your network.</td>
        <td>Jamf Pro server to Apple APNs 17/8 IP range</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>389, 636</td>
        <td>LDAP, Start TLS, or LDAPS</td>
        <td>-</td>
        <td>Directory service integration via LDAP (389), LDAP over TLS (Start TLS/389) or LDAP over SSL (LDAPS/636) can be used for user authentication, device assignment, and user information and group membership lookups.<br>Note: All Jamf Pro server LDAP connections will originate from the Jamf Pro server. For information about LDAP Proxy connections, see the "Jamf Infrastructure Manager – LDAP Proxy Connections" section in this document.</td>
        <td>Jamf Pro server to LDAP/Domain controller</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>11211</td>
        <td>memcached</td>
        <td>-</td>
        <td>Memcached data access acceleration services can help reduce database load in multi-server Jamf Pro configurations.</td>
        <td>Jamf Pro servers to Memcached servers</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>3306</td>
        <td>MySQL</td>
        <td>-</td>
        <td>The Jamf Pro server connects to a MySQL database.</td>
        <td>Jamf Pro server to MySQL database</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>25, 465, 587</td>
        <td>SMTP</td>
        <td>-</td>
        <td>Email integration via an SMTP gateway can be used for administrative notifications, user messaging, and enrollment invitations. The SMTP port depends on the service provider and type of encryption supported.<br>Note: To help keep data and communications as secure as possible, port 25 is blocked in Jamf Cloud. Jamf recommends using port 587 with TLS.</td>
        <td>Jamf Pro server to SMTP gateway host</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Jamf Pro server (outbound)</td>
        <td>[yourserver].jamfcloud.com or on-prem hostname</td>
        <td>514</td>
        <td>Syslog</td>
        <td>-</td>
        <td>Change Management logs can be written to log files and to a Syslog server.</td>
        <td>Jamf Pro server to Syslog server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>548</td>
        <td>AFP</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Software packages can be downloaded by Mac computers from an Apple File Protocol (AFP) server.</td>
        <td>Mac computers to AFP servers</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>5223, 443</td>
        <td>APNs</td>
        <td>iOS, iPadOS, macOS</td>
        <td>The Jamf Pro server will send a message to the Apple Push Notification service when it has an MDM profile or command awaiting delivery to an enrolled device. Mac computers and iOS devices maintain a persistent connection to APNs when connected to a network so they will receive new notifications quickly. End user devices connect to APNs using port 5223 by default, but will fail over to port 443 when connecting via Wi-Fi.</td>
        <td>Managed devices to APNs</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>80, 443</td>
        <td>HTTP and HTTPS</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Mac computers can download software packages from an HTTP and HTTPS server such as Apple macOS Server, Apache, and Microsoft IIS.</td>
        <td>Managed computers to HTTP/HTTPS distribution point</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>80, 443</td>
        <td>HTTP and HTTPS</td>
        <td>iOS, iPadOS, macOS</td>
        <td>The Apple ecosystem relies on many Internet-based systems maintained by Apple and their content distribution network (CDN). Examples include Apple Software Update, the App Store, Device Enrollment (formerly Device Enrollment Program), Volume Purchasing (formerly Volume Purchase Program).</td>
        <td>Managed devices to Apple/CDN</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Mac computers can download software packages from a cloud distribution point (Amazon S3 or CloudFront, Akamai, RackSpace, or Jamf Cloud Distribution Service).</td>
        <td>Managed computers to a cloud distribution point</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>iOS, iPadOS, macOS</td>
        <td>iOS devices can download in-house apps and ebooks from the Jamf Cloud Distribution Service.</td>
        <td>Managed mobile devices to JCDS</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>443</td>
        <td>HTTPS</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Managed computers send crash logging and some anonymized usage statistics to Jamf's Sentry server. For more information, see the Sentry Crash Logging and Usage Analytics Integrations article.</td>
        <td>Managed computers to sentry.pub.jamf.build</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>8443, 443</td>
        <td>HTTPS</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Mac computers and iOS devices connect to the Jamf Pro server when:<br>Prompted to enroll in mobile device management by Apple’s Device Enrollment (formerly Device Enrollment Program)<br>Enrolling via user-initiated enrollment in a web browser<br>Running the jamf agent (Mac computers only)<br>Running Self Service Mobile for iOS<br>Running Self Service for macOS<br>Responding to an MDM push notification<br>When the default settings are used, on-premise Jamf Pro servers use port 8443 and the Jamf Cloud managed-hosting option uses port 443.</td>
        <td>Managed devices to the Jamf Pro server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Managed Computer and Mobile Device Connections (outbound)</td>
        <td>client device</td>
        <td>445, 137–139</td>
        <td>SMB</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Software packages can be distributed to Mac computers using a Windows SMB (CIFS) distribution point.</td>
        <td>Managed computers to SMB servers</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>SCCM Plug-In Connections</td>
        <td>SCCM Proxy Service</td>
        <td>80, 443</td>
        <td>HTTP/HTTPS</td>
        <td>Windows</td>
        <td>The SCCM Proxy Service will transmit updated device inventory information to the Microsoft Configuration Manager API.</td>
        <td>SCCM Plug-In host to SCCM server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>SCCM Plug-In Connections</td>
        <td>SCCM Proxy Service</td>
        <td>8443, 443</td>
        <td>HTTPS</td>
        <td>Windows</td>
        <td>The SCCM Proxy Service queries the Jamf Pro server via a REST API to obtain information about your managed devices. When the default settings are used, on-premise Jamf Pro servers use port 8443, and the Jamf Cloud-hosted servers use port 443.</td>
        <td>SCCM Plug-In host to the Jamf Pro server</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Jamf</td>
        <td>Single Sign-On Connections (bidirectional)</td>
        <td>client device</td>
        <td>custom</td>
        <td>custom</td>
        <td>iOS, iPadOS, macOS</td>
        <td>To implement single sign-on in on-premise environments, two-way communication on TCP ports between the Identity Provider and Jamf Pro server is required.</td>
        <td>IdP <-> Device</td>
        <td>Yes</td>
        <td>unclear</td>
        <td>https://learn.jamf.com/bundle/technical-articles/page/Network_Ports_Used_by_Jamf_Pro.html</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>Office Apps</td>
        <td>client device</td>
        <td>see documentation</td>
        <td>see documentation</td>
        <td>iOS, iPadOS, macOS</td>
        <td>This is a link to the macadmins.software website run by Paul Bowden @microsoft and the PDF he already has with the endpoints used by Office apps on macOS</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>https://macadmins.software/docs/Network_Traffic.pdf</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>*.cdn-apple.com</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>*.networking.apple</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>login-us.microsoftonline.com</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>login.chinacloudapi.cn</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>login.microsoft.com</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>login.microsoftonline.com</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>login.microsoftonline.us</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>login.partner.microsoftonline.cn</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>SSO Plug-in</td>
        <td>sts.windows.net</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>For the SSO plug-in to function properly, Apple devices should be allowed to reach to both identity provider URLs and its own URLs without additional interception. This means that those URLs need to be excluded from network proxies, interception and other enterprise systems.</td>
        <td>device <-> host</td>
        <td>Unclear</td>
        <td>Yes</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/develop/apple-sso-plugin#required-network-configuration</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>Tenant Restrictions</td>
        <td>login.microsoft.com</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Proxy configuration and requirements:<br>The following configuration is required to enable tenant restrictions through your proxy infrastructure. This guidance is generic, so you should refer to your proxy vendor's documentation for specific implementation steps.<br><br>Prerequisites:<br>The proxy must be able to perform TLS interception, HTTP header insertion, and filter destinations using FQDNs/URLs.<br>Clients must trust the certificate chain presented by the proxy for TLS communications. For example, if certificates from an internal public key infrastructure (PKI) are used, the internal issuing root certificate authority certificate must be trusted.<br>Microsoft Entra ID P1 or P2 1 licenses are required for use of tenant restrictions.</td>
        <td>device <-> host</td>
        <td>Yes</td>
        <td>No</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/tenant-restrictions#urls-and-ip-addresses</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>Tenant Restrictions</td>
        <td>login.microsoftonline.com</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Proxy configuration and requirements:<br>The following configuration is required to enable tenant restrictions through your proxy infrastructure. This guidance is generic, so you should refer to your proxy vendor's documentation for specific implementation steps.<br><br>Prerequisites:<br>The proxy must be able to perform TLS interception, HTTP header insertion, and filter destinations using FQDNs/URLs.<br>Clients must trust the certificate chain presented by the proxy for TLS communications. For example, if certificates from an internal public key infrastructure (PKI) are used, the internal issuing root certificate authority certificate must be trusted.<br>Microsoft Entra ID P1 or P2 1 licenses are required for use of tenant restrictions.</td>
        <td>device <-> host</td>
        <td>Yes</td>
        <td>No</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/tenant-restrictions#urls-and-ip-addresses</td>
        <td></td>
    </tr>
    <tr>
        <td>Microsoft</td>
        <td>Tenant Restrictions</td>
        <td>login.windows.net</td>
        <td>unclear</td>
        <td>unclear</td>
        <td>iOS, iPadOS, macOS</td>
        <td>Proxy configuration and requirements:<br>The following configuration is required to enable tenant restrictions through your proxy infrastructure. This guidance is generic, so you should refer to your proxy vendor's documentation for specific implementation steps.<br><br>Prerequisites:<br>The proxy must be able to perform TLS interception, HTTP header insertion, and filter destinations using FQDNs/URLs.<br>Clients must trust the certificate chain presented by the proxy for TLS communications. For example, if certificates from an internal public key infrastructure (PKI) are used, the internal issuing root certificate authority certificate must be trusted.<br>Microsoft Entra ID P1 or P2 1 licenses are required for use of tenant restrictions.</td>
        <td>device <-> host</td>
        <td>Yes</td>
        <td>No</td>
        <td>https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/tenant-restrictions#urls-and-ip-addresses</td>
    </tr>
</table>