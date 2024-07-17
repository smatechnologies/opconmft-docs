---
sidebar_label: 'Release Notes'
hide_title: 'true'
---

# OpConMFT release notes

## OpConMFT ver 3.13.4
July 2024

:eight_spoked_asterisk: **MFT-190**: Allow disabling SMTP authentication so single sign-on won't be attempted when offered.

:eight_spoked_asterisk: **MFT-327**: MFT Server can now be configured via the MFT Scheduler Service provided Web UI.

:eight_spoked_asterisk: **MFT-328**: Added WebUI Server "Users" page to implement Desktop Server Console user configuration functionality.

:eight_spoked_asterisk: **MFT-342**: Email field added to user account settings.

:eight_spoked_asterisk: **MFT-355**: Support Username and Password with Path Endpoints for use where windows single sign-on doesn't work.

:eight_spoked_asterisk: **MFT-367**: The MFT Agent now stores event data in a persistent on disk store so events fire (possibly late) even if OpCon or the MFT Agent go down.

:eight_spoked_asterisk: **MFT-391**: CVE-2023-48795: Avoid potential downgrade attacks by implementing strict kex. More details can be found in the advisory.
CVE-2023-6918: Avoid potential use of weak keys in low memory conditions by systematically checking return values of MD functions. More details can be found in the advisory.

:eight_spoked_asterisk: **MFT-396**: FIPS mode is configurable but defaults to the windows FIPS mode setting.

:eight_spoked_asterisk: **MFT-417**: Support SFTP and FTP (put) connections to IBMi and z/OS.

:eight_spoked_asterisk: **MFT-422**: get, pull, and monitor steps can now redownload already processed files if configured to do so.

:eight_spoked_asterisk: **MFT-437**: Process for checking stored SSH fingerprints now handles pre-existing MD5 hashes and uses SHA256 hashes for new sites, upgrading from MD5 when possible.

:eight_spoked_asterisk: **MFT-439**: Added create directory, and delete buttons for rudimentary file management for directories served over HTTP.

:eight_spoked_asterisk: **MFT-445**: MFT Server now supports password length and complexity requirements.

:eight_spoked_asterisk: **MFT-446**: MFT Server user passwords now uses salted sha256 hashes instead of (unsalted) sha1 hashes.

:eight_spoked_asterisk: **MFT-450**: MFT Agent now fires CloudEvents for client side activity if the Web Hook is licensed and configured.

:eight_spoked_asterisk:  **MFT-307**: WebUI port automatically defaults to port 41100 with HTTPS enabled on install.

:eight_spoked_asterisk:  **MFT-323**: Delete User button added to WebUI Server "Users" page.

:eight_spoked_asterisk:  **MFT-326**: Added WebUI Server "Logging" page.

:eight_spoked_asterisk:  **MFT-334**: Added General tab in WebUI - ServerConsole - Users page.

:eight_spoked_asterisk:  **MFT-338**: Added Shares tab in WebUI - ServerConsole - Users page.

:eight_spoked_asterisk:  **MFT-361**: Added missing Framework documentation from installation.

:eight_spoked_asterisk:  **MFT-373**: Email address field added to Server WebUI user settings page.

:eight_spoked_asterisk:  **MFT-379**: Mitigated CVE-2023-21893.

:eight_spoked_asterisk:  **MFT-489**: Improved performance for SFTP client file transfers.

:white_check_mark: **MFT-106**: Fixed %uploadfiles and %downloadfiles arrays documentation.

:white_check_mark: **MFT-115**: Fixed an issue where adding a group in the web ui could hang timeout.

:white_check_mark: **MFT-176**: FTPLIST command now return $ERROR_SERVER_IS_FTP when you connect to an FTP server as HTTP.

:white_check_mark: **MFT-216**: SFTP connections failed for SSH connections that only accepted "keyboard-interactive" authentication method.

:white_check_mark: **MFT-223**: Could not delete job groups from Scheduler -> Group Settings tab.

:white_check_mark: **MFT-273**: User could delete files from a virtual directory with just upload, list, and post permissions enabled.

:white_check_mark: **MFT-265**: ProgramData and UserData directory fields could be directly edited from WebUI Configuration Data page.

:white_check_mark: **MFT-277**: Debug log export included HTML contents at end of downloaded ZIP file.

:white_check_mark: **MFT-351**: Files with Unicode characters in their name could not be download from server web UI.

:white_check_mark: **MFT-356**: SSH Key selection toggle is now enabled when adding a new SFTP site in the Web UI.

:white_check_mark: **MFT-365**: FTPLOGON was missing TLSv1.3 values from /minversion and /maxversion options.

:white_check_mark: **MFT-370**: Log rotation in the server logs works as intended.

:white_check_mark: **MFT-374**: SSH hostkey fingerprints now use SHA256 instead of MD5 hash.

:white_check_mark: **MFT-377**: User facing server logging stopped when set to rotate every N megabytes.

:white_check_mark: **MFT-381**: User share folder expiration date set to random value if not explicitly set.

:white_check_mark: **MFT-395**: Exporting SSH public key did not work from WebUI.

:white_check_mark: **MFT-401**: Configurator error uninstalling and reinstalling Scheduler Service.

:white_check_mark: **MFT-473**: Importing ssh-1 format ssh keys failed.

:white_check_mark: **MFT-507**: Clients that canonicalize request with a zero length path caused the server to spontaneously disconnect them.

:white_check_mark: **MFT-528**: CloudEvents were being dropped or corrupted

## OpConMFT ver 3.13.3
Oct 2023

:eight_spoked_asterisk: **MFT-280**: Added support of 2 jobs with the same name to run simultaneously. 

:eight_spoked_asterisk: **MFT-207**: Successful site test under Managed Sites page now displays a site listing.

:eight_spoked_asterisk: **MFT-289**: When trying to start a listener the error message now says communication with OpCon failed.

:eight_spoked_asterisk: **MFT-296**: MFT Server now waits for OpCon to come up so it is no longer a requirement that OpCon's Rest API be reachable when the service starts.

:eight_spoked_asterisk: **MFT-305**: FTP server types that use "explicit mode" now labeled as such, under Managed Sites page.

:eight_spoked_asterisk: **MFT-306**: Incorrect warning about "log data signature check failed" removed from Logging WebUI page.

:eight_spoked_asterisk: **MFT-308**: Automatic site configuration option removed from Managed Sites WebUI page.

:eight_spoked_asterisk: **MFT-310**: WebUI managed site test now differentiates between various errors on failed connection.

:eight_spoked_asterisk: **MFT-311**: Files that could not be processed by job because no size or date change now reported as such instead of misleading "file not found" error.

:eight_spoked_asterisk: **MFT-324**: List of currently logged in users now visible from server WebUI.

:eight_spoked_asterisk: **MFT-325**: Implemented disconnect button on server WebUI to kick off logged-in users.

:eight_spoked_asterisk: **MFT-337**: Implemented "Virtual Folders" tab on "Users" page of ServerConsole WebUI.

:white_check_mark: **MFT-153**: FTPS (Explicit) Control Only server type caused site test failure on WebUI Managed Sites page.

:white_check_mark: **MFT-185**: Irrelevant links to unnecessary Error Reconciliation page removed from all pages.

:white_check_mark: **MFT-188**: On Managed Sites WebUI page, Proxy Settings toggle could not be enabled.

:white_check_mark: **MFT-222**: On TLS Certificate WebUI page, after importing a certificate, column values and headers contained doubled-up text.

:white_check_mark: **MFT-220**: On TLS Certificate WebUI page, unable to successfully export a certificate.

:white_check_mark: **MFT-218**: Keys could not be successfully exported from the PGP Keys WebUI page.

:white_check_mark: **MFT-242**: On Outbound Email WebUI page, TLS Mode drop-down list was blank and contained no selectable options.

:white_check_mark: **MFT-239**: Confirmation dialog for deleting a managed site in WebUI did not offer an option to cancel delete operation.

:white_check_mark: **MFT-237**: Inconsistent dialog title suggested managed site test failure when managed site test actually succeeded.

:white_check_mark: **MFT-276**: Some modal dialogs in WebUI were abnormally wide and not disambiguated from background.

:white_check_mark: **MFT-279**: On PGP Keys WebUI page, a saved passphrase could not be viewed.

:white_check_mark: **MFT-284**: Fixed issues with Intermittent erroneous TLS initialization error when connected to plain non TLS services and Intermittent server crash on logoff.

:white_check_mark: **MFT-291**: Debug logging for the Web UI and the Scheduler separated into Scheduler.log and NewUI.log to fix log rotation.

:white_check_mark: **MFT-294**: Under high load MFT agent jobs could report failure when they actually worked. This error would also prevent acquiring job logs.

:white_check_mark: **MFT-315**: Azure blob storage custom connection string was ignored when connecting.

:white_check_mark: **MFT-317**: Password, Verification fields added to Outbound Email WebUI page.

:white_check_mark: **MFT-318**: Delete button on Outbound Email WebUI page did not actually delete outbound email item.

:white_check_mark: **MFT-340**: Styling listing output didn't work correctly due to missing closing div tags.

:white_check_mark: **MFT-348**: Fixed an issue with a rare crash during file uploads.

:white_check_mark: **MFT-350**: Successful path endpoint tests dialog title no longer contains "error".

:white_check_mark: **MFT-354**: Fixed an issue with deleting group in desktop Configurator.

:white_check_mark: **MFT-357**: A corrupted share configuration element could crash MFT Server when listing a directory in the web UI.

:white_check_mark: **MFT-359**: Fixed an issue with deleting PGP Secret keys from WebUI.

:white_check_mark: **MFT-360**: TLS version limitations did set in Web UI did not show in desktop configurator.

:white_check_mark: **MFT-362**: Inactive Help buttons removed from MFT Web UI.

## OpConMFT ver 3.13.2
June 2023

:eight_spoked_asterisk: **MFT-7**: MFT Agent installer no longer include no longer supported MS product SQL Server CE.

:eight_spoked_asterisk: **MFT-288**: Disable the buttons & sub menu option for unauthenticated user (who doesn't have admin access now) and show the warring message on the header of the application.

:white_check_mark: **MFT-153**: FTPS (Explicit) Control Only server type caused site test failure on WebUI Managed Sites page.

:white_check_mark: **MFT-185**: Irrelevant links to unnecessary Error Reconciliation page removed from all pages.

:white_check_mark: **MFT-187**: Fixed an issue with edit Site TLS Client Cert toggle.

:white_check_mark: **MFT-188**: On Managed Sites WebUI page, Proxy Settings toggle could not be enabled.

:white_check_mark: **MFT-193**: PGP key passphrase now being saved correctly by WebUI.

:white_check_mark: **MFT-216**: SFTP connections failed for SSH connections that only accepted "keyboard-interactive" authentication method.

:white_check_mark: **MFT-226**: Fixed an issue with HTTP/HTTPS Transfer Type drop down list.

:white_check_mark: **MFT-222**: On TLS Certificate WebUI page, after importing a certificate, column values and headers contained doubled-up text.

:white_check_mark: **MFT-220**: On TLS Certificate WebUI page, unable to successfully export a certificate.

:white_check_mark: **MFT-219**: Fixed an issue with TLS certificate delete in WebUI.

:white_check_mark: **MFT-242**: On Outbound Email WebUI page, TLS Mode drop-down list was blank and contained no selectable options.

:white_check_mark: **MFT-241**: Fixed an issue with SMTP email configuration, CC and BCC as not mandatory.

:white_check_mark: **MFT-240**: Fixed an issue with SMTP application crash.

:white_check_mark: **MFT-239**: Confirmation dialog for deleting a managed site in WebUI did not offer an option to cancel delete operation.

:white_check_mark: **MFT-237**: Inconsistent dialog title suggested managed site test failure when managed site test actually succeeded.

:white_check_mark: **MFT-236**: Fixed an issue with WebUI - Configuration data browse directory that was not working.

:white_check_mark: **MFT-235**: Fixed an issue with WebUI - Configuration data buttons that were not working.

:white_check_mark: **MFT-234**: Fixed an issue with WebUI - Debug data pages.

:white_check_mark: **MFT-232**: Fixed an issue with GUI Configurator - TLS Certificate import/delete.

:white_check_mark: **MFT-248**: Fixed am issue with test buttons to verify the inputs.

:white_check_mark: **MFT-255**: Fixed an issue with server console when disconnecting a user on the information page.

:white_check_mark: **MFT-256**: When looking at a share the share creating control should not be visible.

:white_check_mark: **MFT-257**: MFT server could not send events successfully on windows builds lower than 1903 which in server OSes was anything lower than 2022. 

:white_check_mark: **MFT-258**: Fixed an issue with Virtual folders not appearing for user.

:white_check_mark: **MFT-259**: Fixed an issue with FTP disconnects on upload with winscp.

:white_check_mark: **MFT-260**: Fixed an issue with FTP/SFTP checkboxes are not updated in Server Console user list when supported protocol changed.

:white_check_mark: **MFT-276**: Some modal dialogs in WebUI were abnormally wide and not disambiguated from background.

:white_check_mark: **MFT-279**: On PGP Keys WebUI page, a saved passphrase could not be viewed.

:white_check_mark: **MFT-317**: Password, Verification fields added to Outbound Email WebUI page.

:white_check_mark: **MFT-318**: Delete button on Outbound Email WebUI page did not actually delete outbound email item.

:white_check_mark: **MFT-207**: WebUI managed site test button, Successful site test page now displays a site listing.
