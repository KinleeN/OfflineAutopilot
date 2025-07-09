# Pre-reqs
- Create a registered application in Microsoft Entra with these API permissions:
  - DeviceManagementApps.ReadWrite.All 
  - DeviceManagementConfiguration.ReadWrite.All 
  - DeviceManagementManagedDevices.ReadWrite.All 
  - DeviceManagementServiceConfig.ReadWrite.All
- Create a secret in the application and store the value. If using a secret that's already been made, check that it's not expired.
# Instructions
## Get Required Modules
On a working, internet-connected computer:
- Open PowerShell as an Administrator
- Run:
```powershell
Save-Module -Name Microsoft.Graph.Authentication -Path “C:\GraphModules”
Save-Module -Name Microsoft.Graph.DeviceManagement.Enrollment -Path “C:\GraphModules”
Save-Module -Name Microsoft.Graph.Groups -Path “C:\GraphModules”
Save-Module -Name Microsoft.Graph.Intune -Path “C:\GraphModules”
Save-Module -Name WindowsAutoPilotIntune -Path “C:\GraphModules”
```
- The path can be changed to wherever you want the modules stored on your computer
- Some of these might install additional modules or packages, but you only need the 5 specified above for your USB

## Get Windows Autopilot Script from PowerShell Gallery
You will also need the Get-WindowsAutopilotInfo script from the PowerShell Gallery website. Find the latest version, click on FileList, then Get-WindowsAutopilotInfo.ps1

Edit the Get-WindowsAutopilotInfo script and delete the section where it installs the WindowsAutopilotIntune module.

![Screenshot](https://ik.imagekit.io/2pzoo990ha/Screenshot%202025-07-08%20145354.png?updatedAt=1752004590986)

## Download OfflineAutopilot Script
Next, download the OfflineAutopilot.ps1 script from this repository and edit it to add your TenantID, AppID, and AppSecret.

## Copy files to USB
Copy both scripts and all 5 modules to your USB. The 5 modules need to be placed within a folder named "GraphModules".

## Use USB on new device
Put your USB into the device you're registering and open PowerShell as an administrator.

Change your current working directory to be the USB, then run:
```powershell
.\OfflineAutopilot.ps1
```

The script will run and show that your device has been uploaded into Autopilot. Within a few minutes, you will be able to see the registered device in Intune.
