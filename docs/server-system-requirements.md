---
sidebar_label: 'MFT Agent Requirements'
hide_title: 'true'
---

# Getting Started

* OpCon MFT Server **Requires OpCon version 22.4 or greater**.

* OpCon MFT Server **Requires OpCon MFT version 3.13.1 or greater**.

* Before starting an installation, **an updated OpCon License key including an OpConMFT Server must be obtained.** Failure to do this will result in a License 
Violation.

## Hardware Requirements

On the MFT Server server, please ensure the following minimum hardware requirements are met for each instance of MFT Server installed.

* **RAM:** 40MB for every 100 concurrent users. 
* **CPU:** We recommend having 1 available CPU core for every 1250 concurrent users.
* **DISK:** We recommend a minimum of 2 GB of hard drive space to install the software and have room to maintain a typical number of logs. Be sure to provision sufficient additional hard drive space for the files you wish to manage using the software.

## Software Requirements

OpCon MFT Server is a 64-bit software and the following requirements apply:

* Requires the 64-bit version of: **Windows Server 2012 R2, 2016, or 2019 (including Core edition)**, OR **Windows Desktop Editions 10 or 11**.
* Requires **Microsoft .NET Framework 4.8**
* Requires **Visual Studio 2022 C++ Runtime**
* Requires **SQL Compact Edition 4.0 SP1**

:::note 

The full installer includes all of these dependencies.

:::

:::note

The OpCon MFT installer does not itself require rebooting but the dependencies installed on the initial install may.

:::

