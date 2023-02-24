# Installation

>OpCon MFT Requires OpCon version 22.0 or greater.

>***Before starting an installation, an updated OpCon License key including an OpConMFT Agent type must be obtained. Failure to do this will result in a license 
Violation when the defined OpCon MFT agent is activated in opCon and will result in OpCon termination if the activated OpConMFT Agent is not deactivated within
the specified time.***


The OpCon MFT environment consists of an OpCon MFT Agent and the SMAMftAgentProxy that provides the communication link between OpCon and the OpCon MFT Agent.

The SMAMftAgentProxy is contained within the SMANetCom environment and is installed automatically when the core SMA OpCon component is installed. 

The SMAMftAgentProxy uses the new SMANetCom Rest-API module and provides the communications link between OpCon and the OpCon MFT Agent Rest-API. There is a
one to one relationship between an OpCon environment and an OpCon MFT Agent is due to the authentication token used between OpCon and the OpCon MFT Agent.
Part of the configuration process is to retrieve the token value from the OpCon MFT Agent and store this in the OpCon agent record. 

## OpCon MFT Agent Installation
The OpCon MFT Agent software can be downloaded using the OpCon Web Installer. It is listed as SMA OpConMFT under the Agents section. The software currently
only has a download option. Once down loaded, the installer can be started manually outside the OpCon Web Installer.

The agent installation consists of executing the installer program and answering a single license acceptance message.
After the installation, if a system restart is required, restart the system.

### Retrieve the OpCon MFT Agent Port Number
After the restart, the port number for communication with OpCon that was automatically configured during the installation process must be retrieved from the OpCon MFT Agent.

Select the **OpConMFT n.nn** menu item and then the **OpConMFT n.nn Configurator** menu item.

This opens the Configurator Software.

Select the **Scheduler** option from the tree view and then the **Scheduler Settings**. The port number will be displayed in the **UI Port** field.

### Enable Use SSL/TLS
The connection between OpCon and the OpCon MFT Agent requires a https connection instead of the default http connection. 

Using the Configurator, define a self-signed certificate or extract the information to request purchase a certificate from a CA authority.
Select the **TLS Certificates** option from the tree view and select **create**.

Enter the information for the certificate.

Field                      | Description
-------------------------- | -----------
**City/Town**              | Enter the name of your city or town.
**Organization**           | Enter the name of your organization.
**State/Province/Region**  | Enter the name of the area you are located in.
**Common Name**            | Enter a name for the certificate (i.e. OpConMFTxxx - where xxx is a unique value in case you more than one OpCon MFT Agent).
**Country**                | Enter the name of your country.
**Unit**                   | Enter the name of your unit within your organization.
**Password**               | Enter a password that will be associated with the certificate.
**Verify Password**        | Re-enter the password.
**E-mail Address**         | Enter a valid email address that will be associated with the certificate.

Select **Create Self Signed** to create a certificate or **Create Signing Request** to produce the information to purchase a certificate from a CA.

On the **Scheduler Settings** screen, ensure that the **Use SSL/TLS** option is selected. 

Now select the browse option next to the **Use SSL/TLS** field and select the self-signed certificate you created or a certificate you imported. 

![OpCon MFT Agent Scheduler Settings Tab](../static/img/opcon-mft-agent-configurator-scheduler-settings.png)

### Define Email SMTP Server Connection
The OpCon MFT Agent can be configured to send notifications (emails). To enable notifications, a SMTP Server connection must be completed.

Select the **OutBound Email (SMTP)** option from the tree view and then **Add** button.

![OpCon MFT Agent Notifications Server](../static/img/opcon-mft-agent-configurator-notifications-settings.png)

Set the required options to configure the connection to the SMTP service. The same SMTP service used for OpCon Notifications can be used for OpCon MFT Notifications.

Field                                    | Description
---------------------------------------- | -----------
**Site Name**                            | Enter a name to define the SMTP connection.
**Server URL / IP Address**              | Enter the address of the SMTP service.
**Server Port**                          | Adjust the port number if required (default 25).
**UserId / Password**                    | Enter credentials for the SMTP service.
**No TLS / Explicit TLS / Implicit TLS** | Select the TLS option for the SMTP service.
**From**                                 | Enter the name to be used as the sender of all notifications from the OpCon MFT Agent.
**Send To**                              | Enter a recipient address that will be used when the **Test** button is selected. 

Select the **Test** button to send a test message. During this process, if the connection fails, the software test various TLS and port options to obtain a valid connection. 

Once these changes have been made, restart the OpConMFT Service.


After the OpCon MFT agent is installed, a new token value is available for download for a short period of time. If the OpCon MFT OpCon Agent configuration is not completed within this specified time an error message will be displayed indicating that the token is not available. If this happens, then a new token must be generated using the OpCon MFT Agent software. This can be done by selecting the **Reset Auth Token Deadline** button on the **Scheduler Settings** tab of the **OpConMFT Configurator**. 

## OpCon MFT Agent Configuration
The configuration of the OpCon MFT Agent is done using Solution Manager.

From Solution Manager, select **Library** and under the **Administration** menu select **Agents**.

![OpCon MFT Agent View](../static/img/opconmft-agent-definition-1.png)

Select **+ Add** to configure the new OpCon MFT Agent.

Enter a name for the agent and select the **OpConMFT** from the **Machine Type** drop-down list.

Open the **General Settings** tab and enter the address information, the Max Concurrent Jobs and the Socket Number (the **UI Port** number retrieved from the OpCon MFT Agent Scheduler Settings tab). 

![OpCon MFT Agent Settings](../static/img/opconmft-agent-definition-2.png)

Save the configuration.

Select the **Communications Settings** tab and enter the **JORS Port Number** which is the same port number used on the previous tab ((the **UI Port** number retrieved from the OpCon MFT Agent Scheduler Settings tab).

Save the configuration.

The next step is to complete the Authentication process which consists of connecting to the OpCon MFT Agent for the first time and obtaining a token which will be used for future communication.
There is a timeout value of 100 seconds between the completion of the OpCon MFT Agent installation and performing the initial authentication step. If this is not completed within the time frame, it will not be possible to authenticate. The following message will be displayed **Unable to update authentication token for machine** reason ***The request was cancelled due to the configured HttpClient.Timeout of 100 seconds***. 

When this occurs it will be necessary to reset the auth token deadline and re-authenticate. See **OpConMFT Agent Installation** for process.

Go to the **Operational Agents** screen and select the created opCon MFT Agent. This will display the AgentSelection tab, which includes an **Authentication** button. 
After selecting the Authentication button, a successful authentication message will appear. 

The OpCon MFT Agent can then be started.

