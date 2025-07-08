# OfflineAutopilot
Description: The instructions tell you how to upload a device's hardware hash into Autopilot automatically without using PowerShell Gallery commands. You will need a USB to copy files from a working computer to the device you are registering. Although it says offline, the computer you're registering will still need to be connected to the internet in order to be able to connect to Intune and register your device into Autopilot.

The script uses an Entra registered app, which will need to be created within Entra, so there will be no prompting to login during Autopilot registration.
