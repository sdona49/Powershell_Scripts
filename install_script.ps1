$PowershellOutFile = "$env:UserProfile\Downloads\NetExtender\Deploy-NetExtender.ps1"


msiexec.exe /i $PowershellOutFile /norestart /qn netlogon=true
#Run Installation
#Powershell.exe -ExecutionPolicy Bypass $PowershellOutFile -DeploymentType "Install" -DeployMode "NonInteractive"
