---
sidebar_label: 'MFT Agent Requirements'
hide_title: 'true'
---

# Getting Started

* OpCon MFT **Requires OpCon version 22.0 or greater**.

* Before starting an installation, **an updated OpCon License key including an OpConMFT Agent type must be obtained.** Failure to do this will result in a License 
Violation.


## Hardware Requirements

On the MFT Agent server, please ensure the following minimum hardware requirements are met for each instance of MFT Agent installed.

* **RAM:** 512Mb plus 50 MB per instance of OpCon MFT.exe 

:::note

Each actively running OpCon MFT script uses one instance of OpCon MFT.exe

:::

* **CPU:** We recommend having 1 available CPU core for every 10 to 20 actively running instances of OpCon MFT.exe, depending on the nature of the processes being automated. 

:::note

Encryption and decryption may be more processor-intensive than other activities such as renaming files.

:::

* **DISK:** We recommend a minimum of 2 GB of hard drive space to install the software and have room to maintain a typical number of logs. Be sure to provision sufficient additional hard drive space for the files you wish to manage using the software.

## Software Requirements

OpCon MFT is a 64-bit software and the following requirements apply:

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

