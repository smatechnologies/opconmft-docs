---
sidebar_label: "Release notes"
---

# OpConMFT release notes

## OpConMFT ver 3.13.4
July 2024

:eight_spoked_asterisk: **ROBOFTP-190**: Allow disabling SMTP authentication so single sign-on won't be attempted when offered.

:eight_spoked_asterisk: **ROBOFTP-327**: MFT Server can now be configured via the MFT Scheduler Service provided Web UI.

:eight_spoked_asterisk: **ROBOFTP-328**: Added WebUI Server "Users" page to implement Desktop Server Console user configuration functionality.

:eight_spoked_asterisk: **ROBOFTP-342**: Email field added to user account settings.

:eight_spoked_asterisk: **ROBOFTP-355**: Support Username and Password with Path Endpoints for use where windows single sign-on doesn't work.

:eight_spoked_asterisk: **ROBOFTP-367**: The MFT Agent now stores event data in a persistent on disk store so events fire (possibly late) even if OpCon or the MFT Agent go down.

:eight_spoked_asterisk: **ROBOFTP-378**: Implementation changed to consolidate code from OpCon MFT Agent and Robo-FTP products.

:eight_spoked_asterisk: **ROBOFTP-390**: Consolidated code for OpConMFT agent and Robo-FTP Standalone MFT.

:eight_spoked_asterisk: **ROBOFTP-391**: CVE-2023-48795: Avoid potential downgrade attacks by implementing strict kex. More details can be found in the advisory.
CVE-2023-6918: Avoid potential use of weak keys in low memory conditions by systematically checking return values of MD functions. More details can be found in the advisory.

:eight_spoked_asterisk: **ROBOFTP-396**: Fips mode is configurable but defaults to the windows fips mode setting.

:eight_spoked_asterisk: **ROBOFTP-417**: Support SFTP and FTP (put) connections to IBMi and z/OS.

:eight_spoked_asterisk: **ROBOFTP-422**: get, pull, and monitor steps now support can now redownload already processed files if configured to do so.

:eight_spoked_asterisk: **ROBOFTP-437**: Process for checking stored SSH fingerprints now handles pre-existing MD5 hashes and uses SHA256 hashes for new sites, upgrading from MD5 when possible.

:eight_spoked_asterisk: **ROBOFTP-439**: Added create directory, and delete buttons for rudimentary file management for directories served over HTTP.

:eight_spoked_asterisk: **ROBOFTP-445**: MFT Server now supports password length and complexity requirements.

:eight_spoked_asterisk: **ROBOFTP-446**: MFT Server user passwords now uses salted sha256 hashes instead of (unsalted) sha1 hashes.

:eight_spoked_asterisk: **ROBOFTP-450**: MFT Agent now fires CloudEvents for client side activity if the Web Hook is licensed and configured.

:eight_spoked_asterisk:  **ROBOFTP-307**: WebUI port automatically defaults to port 41100 with HTTPS enabled on install.

:eight_spoked_asterisk:  **ROBOFTP-323**: Delete User button added to WebUI Server "Users" page.

:eight_spoked_asterisk:  **ROBOFTP-326**: Added WebUI Server "Logging" page.

:eight_spoked_asterisk:  **ROBOFTP-334**: Added General tab in WebUI - ServerConsole - Users page.

:eight_spoked_asterisk:  **ROBOFTP-338**: Added Shares tab in WebUI - ServerConsole - Users page.

:eight_spoked_asterisk:  **ROBOFTP-341**: Created InetLib unit test that runs HTTP Server listing output through an HTML validator.

:eight_spoked_asterisk:  **ROBOFTP-361**: Added missing Framework documentation from installation.

:eight_spoked_asterisk:  **ROBOFTP-373**: Email address field added to Server WebUI user settings page.

:eight_spoked_asterisk:  **ROBOFTP-376**: Migrated deprecated BouncyCastle dependency to v2.2.1 (BouncyCastle.Cryptography).

:eight_spoked_asterisk:  **ROBOFTP-379**: Updated Oracle.ManagedDataAccess to v19.x to mitigate CVE-2023-21893.

:eight_spoked_asterisk:  **ROBOFTP-489**: SFTP client now directly uses libssh asynchronous I/O functions for upload and download.

:white_check_mark: **ROBOFTP-21**: Fixed an issue when missing hwcode/swcode on upgrade activates 30 day trial.

:white_check_mark: **ROBOFTP-106**: Fixed %uploadfiles and %downloadfiles arrays documentation.

:white_check_mark: **ROBOFTP-115**: Fixed an issue where adding a group in the web ui could hang timeout.

:white_check_mark: **ROBOFTP-176**: FTPLIST command now return $ERROR_SERVER_IS_FTP when you connect to an FTP server as HTTP.

:white_check_mark: **ROBOFTP-216**: SFTP connections failed for SSH connections that only accepted "keyboard-interactive" authentication method.

:white_check_mark: **ROBOFTP-223**: Could not delete job groups from Scheduler -> Group Settings tab.

:white_check_mark: **ROBOFTP-273**: User could delete files from a virtual directory with just upload, list, and post permissions enabled.

:white_check_mark: **ROBOFTP-265**: ProgramData and UserData directory fields could be directly edited from WebUI Configuration Data page.

:white_check_mark: **ROBOFTP-277**: Debug log export included HTML contents at end of downloaded ZIP file

:white_check_mark: **ROBOFTP-351**: Files with Unicode characters in their name could not be download from server web UI.

:white_check_mark: **ROBOFTP-356**: SSH Key selection toggle is now enabled when adding a new SFTP site in the Web UI.

:white_check_mark: **ROBOFTP-365**: FTPLOGON was missing TLSv1.3 values from /minversion and /maxversion options.

:white_check_mark: **ROBOFTP-370**: Log rotation in the server logs works as intended.

:white_check_mark: **ROBOFTP-374**: SSH hostkey fingerprints now use SHA256 instead of MD5 hash.

:white_check_mark: **ROBOFTP-377**: User facing server logging stopped when set to rotate every N megabytes.

:white_check_mark: **ROBOFTP-381**: User share folder expiration date set to random value if not explicitly set.

:white_check_mark: **ROBOFTP-382**: License counter was broken.

:white_check_mark: **ROBOFTP-395**: Exporting SSH public key did not work from WebUI.

:white_check_mark: **ROBOFTP-401**: Configurator error uninstalling and reinstalling Scheduler Service.

:white_check_mark: **ROBOFTP-473**: Importing ssh-1 format ssh keys failed.

:white_check_mark: **ROBOFTP-507**: Clients that canonicalize request with a zero length path caused the server to spontaneously disconnect them.

:white_check_mark: **ROBOFTP-528**: CloudEvents were being dropped or corrupted

## OpConMFT ver 3.13.3
Oct 2023

:eight_spoked_asterisk: **ROBOFTP-280**: Added support of 2 jobs with the same name to run simultaneously. 

:eight_spoked_asterisk: **ROBOFTP-207**: Successful site test under Managed Sites page now displays a site listing.

:eight_spoked_asterisk: **ROBOFTP-289**: When trying to start a listener the error message now says communication with OpCon failed.

:eight_spoked_asterisk: **ROBOFTP-296**: MFT Server now waits for OpCon to come up so it is no longer a requirement that OpCon's Rest API be reachable when the service starts.

:eight_spoked_asterisk: **ROBOFTP-305**: FTP server types that use "explicit mode" now labeled as such, under Managed Sites page.

:eight_spoked_asterisk: **ROBOFTP-306**: Incorrect warning about "log data signature check failed" removed from Logging WebUI page.

:eight_spoked_asterisk: **ROBOFTP-308**: Automatic site configuration option removed from Managed Sites WebUI page.

:eight_spoked_asterisk: **ROBOFTP-310**: WebUI managed site test now differentiates between various errors on failed connection.

:eight_spoked_asterisk: **ROBOFTP-311**: Files that could not be processed by job because no size or date change now reported as such instead of misleading "file not found" error.

:eight_spoked_asterisk: **ROBOFTP-324**: List of currently logged in users now visible from server WebUI.

:eight_spoked_asterisk: **ROBOFTP-325**: Implemented disconnect button on server WebUI to kick off logged-in users.

:eight_spoked_asterisk: **ROBOFTP-337**: Implemented "Virtual Folders" tab on "Users" page of ServerConsole WebUI.

:eight_spoked_asterisk: **ROBOFTP-344**: Change Cassini logging not require loggers to be thread safe.

:eight_spoked_asterisk: **ROBOFTP-352**: Publish symbols for production builds so we can inspect crash dumps.

:white_check_mark: **ROBOFTP-153**: FTPS (Explicit) Control Only server type caused site test failure on WebUI Managed Sites page.

:white_check_mark: **ROBOFTP-185**: Irrelevant links to unnecessary Error Reconciliation page removed from all pages.

:white_check_mark: **ROBOFTP-188**: On Managed Sites WebUI page, Proxy Settings toggle could not be enabled.

:white_check_mark: **ROBOFTP-222**: On TLS Certificate WebUI page, after importing a certificate, column values and headers contained doubled-up text.

:white_check_mark: **ROBOFTP-220**: On TLS Certificate WebUI page, unable to successfully export a certificate.

:white_check_mark: **ROBOFTP-218**: Keys could not be successfully exported from the PGP Keys WebUI page.

:white_check_mark: **ROBOFTP-242**: On Outbound Email WebUI page, TLS Mode drop-down list was blank and contained no selectable options.

:white_check_mark: **ROBOFTP-239**: Confirmation dialog for deleting a managed site in WebUI did not offer an option to cancel delete operation.

:white_check_mark: **ROBOFTP-237**: Inconsistent dialog title suggested managed site test failure when managed site test actually succeeded.

:white_check_mark: **ROBOFTP-276**: Some modal dialogs in WebUI were abnormally wide and not disambiguated from background.

:white_check_mark: **ROBOFTP-279**: On PGP Keys WebUI page, a saved passphrase could not be viewed.

:white_check_mark: **ROBOFTP-284**: Fixed issues with Intermittent erroneous TLS initialization error when connected to plain non TLS services and Intermittent server crash on logoff.

:white_check_mark: **ROBOFTP-291**: Debug logging for the Web UI and the Scheduler separated into Scheduler.log and NewUI.log to fix log rotation.

:white_check_mark: **ROBOFTP-294**: Under high load MFT agent jobs could report failure when they actually worked. This error would also prevent acquiring job logs.

:white_check_mark: **ROBOFTP-315**: Azure blob storage custom connection string was ignored when connecting.

:white_check_mark: **ROBOFTP-317**: Password, Verification fields added to Outbound Email WebUI page.

:white_check_mark: **ROBOFTP-318**: Delete button on Outbound Email WebUI page did not actually delete outbound email item.

:white_check_mark: **ROBOFTP-340**: Styling listing output didn't work correctly due to missing closing div tags.

:white_check_mark: **ROBOFTP-348**: Fixed an issue with a rare crash during file uploads.

:white_check_mark: **ROBOFTP-350**: Successful path endpoint tests dialog title no longer contains "error".

:white_check_mark: **ROBOFTP-354**: Fixed an issue with deleting group in desktop Configurator.

:white_check_mark: **ROBOFTP-357**: A corrupted share configuration element could crash MFT Server when listing a directory in the web UI.

:white_check_mark: **ROBOFTP-359**: Fixed an issue with deleting PGP Secret keys from WebUI.

:white_check_mark: **ROBOFTP-360**: TLS version limitations did set in Web UI did not show in desktop configurator.

:white_check_mark: **ROBOFTP-362**: Inactive Help buttons removed from MFT Web UI.

## OpConMFT ver 3.13.2
June 2023

:eight_spoked_asterisk: **ROBOFTP-7**: MFT Agent installer no longer include no longer supported MS product SQL Server CE.

:eight_spoked_asterisk: **ROBOFTP-288**: Disable the buttons & sub menu option for unauthenticated user (who doesn't have admin access now) and show the warring message on the header of the application.

:white_check_mark: **ROBOFTP-153**: FTPS (Explicit) Control Only server type caused site test failure on WebUI Managed Sites page.

:white_check_mark: **ROBOFTP-185**: Irrelevant links to unnecessary Error Reconciliation page removed from all pages.

:white_check_mark: **ROBOFTP-187**: Fixed an issue with edit Site TLS Client Cert toggle.

:white_check_mark: **ROBOFTP-188**: On Managed Sites WebUI page, Proxy Settings toggle could not be enabled.

:white_check_mark: **ROBOFTP-193**: PGP key passphrase now being saved correctly by WebUI.

:white_check_mark: **ROBOFTP-216**: SFTP connections failed for SSH connections that only accepted "keyboard-interactive" authentication method.

:white_check_mark: **ROBOFTP-226**: Fixed an issue with HTTP/HTTPS Transfer Type drop down list.

:white_check_mark: **ROBOFTP-222**: On TLS Certificate WebUI page, after importing a certificate, column values and headers contained doubled-up text.

:white_check_mark: **ROBOFTP-220**: On TLS Certificate WebUI page, unable to successfully export a certificate.

:white_check_mark: **ROBOFTP-219**: Fixed an issue with TLS certificate delete in WebUI.

:white_check_mark: **ROBOFTP-242**: On Outbound Email WebUI page, TLS Mode drop-down list was blank and contained no selectable options.

:white_check_mark: **ROBOFTP-241**: Fixed an issue with SMTP email configuration, CC and BCC as not mandatory.

:white_check_mark: **ROBOFTP-240**: Fixed an issue with SMTP application crash.

:white_check_mark: **ROBOFTP-239**: Confirmation dialog for deleting a managed site in WebUI did not offer an option to cancel delete operation.

:white_check_mark: **ROBOFTP-237**: Inconsistent dialog title suggested managed site test failure when managed site test actually succeeded.

:white_check_mark: **ROBOFTP-236**: Fixed an issue with WebUI - Configuration data browse directory that was not working.

:white_check_mark: **ROBOFTP-235**: Fixed an issue with WebUI - Configuration data buttons that were not working.

:white_check_mark: **ROBOFTP-234**: Fixed an issue with WebUI - Debug data pages.

:white_check_mark: **ROBOFTP-232**: Fixed an issue with GUI Configurator - TLS Certificate import/delete.

:white_check_mark: **ROBOFTP-248**: Fixed am issue with test buttons to verify the inputs.

:white_check_mark: **ROBOFTP-255**: Fixed an issue with server console when disconnecting a user on the information page.

:white_check_mark: **ROBOFTP-256**: When looking at a share the share creating control should not be visible.

:white_check_mark: **ROBOFTP-257**: MFT server could only send events successfully on windows builds lower than 1903 which in server OSes was anything lower than 2022. 

:white_check_mark: **ROBOFTP-258**: Fixed an issue with Virtual folders not appearing for user.

:white_check_mark: **ROBOFTP-259**: Fixed an issue with FTP disconnects on upload with winscp.

:white_check_mark: **ROBOFTP-260**: Fixed an issue with FTP/SFTP checkboxes are not updated in Server Console user list when supported protocol changed.

:white_check_mark: **ROBOFTP-276**: Some modal dialogs in WebUI were abnormally wide and not disambiguated from background.

:white_check_mark: **ROBOFTP-279**: On PGP Keys WebUI page, a saved passphrase could not be viewed.

:white_check_mark: **ROBOFTP-317**: Password, Verification fields added to Outbound Email WebUI page.

:white_check_mark: **ROBOFTP-318**: Delete button on Outbound Email WebUI page did not actually delete outbound email item.

:white_check_mark: **ROBOFTP-207**: WebUI managed site test button, Successful site test page now displays a site listing.