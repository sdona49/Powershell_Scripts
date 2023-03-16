$PowershellOutFile = "$env:UserProfile\Downloads\NetExtender\Files\NetExtender-x64-10.2.331.MSI"

#Run Installation
Powershell.exe -ExecutionPolicy Bypass $PowershellOutFile -DeploymentType "Install" -DeployMode "NonInteractive"
