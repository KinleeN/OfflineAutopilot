$TenantID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" 
$AppID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" 
$AppSecret = "xxxxxxxxxxxxxxxxxxxxxxxx" 
$GroupTag = "autopilot"

$modulePath = "D:\GraphModules"
$env:PSModulePath += ";$modulePath"

Import-Module "$modulePath\Microsoft.Graph.Authentication\2.*\Microsoft.Graph.Authentication.psd1"
Import-Module "$modulePath\Microsoft.Graph.DeviceManagement.Enrollment\2.*\Microsoft.Graph.DeviceManagement.Enrollment.psd1"
Import-Module "$modulePath\WindowsAutopilotIntune" -Force -Scope Global

Set-ExecutionPolicy Bypass -Scope Process -Force
& .\Get-WindowsAutopilotInfo.ps1 -Online -TenantId $TenantID -AppId $AppID -AppSecret $AppSecret -GroupTag $GroupTag
