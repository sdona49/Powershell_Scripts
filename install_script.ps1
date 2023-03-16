$PowershellOutFile = "$env:UserProfile\Downloads\NetExtender\Deploy-NetExtender.ps1"

#Run Installation
Powershell.exe -ExecutionPolicy Bypass -NoLogo -WindowStyle Hidden $PowershellOutFile -DeploymentType "Install" -DeployMode "NonInteractive"
