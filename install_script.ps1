$PowershellOutFile = "$env:UserProfile\Downloads\NetExtender\Deploy-NetExtender.ps1"

#Run Installation
Powershell.exe -ExecutionPolicy Bypass $PowershellOutFile -DeploymentType "Install" -DeployMode "NonInteractive"
