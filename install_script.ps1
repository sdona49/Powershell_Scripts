#Create Directory
New-Item -ItemType Directory -Path "$env:UserProfile\Downloads\NetExtender\Files\"
New-Item -ItemType Directory -Path "$env:UserProfile\Downloads\PADT\"
New-Item -ItemType Directory -Path "$env:UserProfile\Downloads\NetExtender\AppDeployToolkit\"

#INSTALL VARIABLES
$ToolDownload = "https://software.sonicwall.com/NetExtender/NetExtender-x64-10.2.331.MSI"
$ToolOutFile = "$env:UserProfile\Downloads\NetExtender\Files\NetExtender-x64-10.2.331.MSI"
$ToolkitDownload = "https://github.com/PSAppDeployToolkit/PSAppDeployToolkit/releases/download/3.8.4/PSAppDeployToolkit_v3.8.4.zip"
$ToolkitOutFile = "$env:UserProfile\Downloads\PSAppDeployToolkit_v3.8.4.zip"
$PowershellDownload = "https://raw.githubusercontent.com/sdona49/Powershell_Scripts/main/Deploy-NetExtender.ps1"
$PowershellOutFile = "$env:UserProfile\Downloads\NetExtender\Deploy-NetExtender.ps1"

#Downloads netextender EXE
Invoke-WebRequest -Uri $ToolDownload  -OutFile $ToolOutFile | Out-Null

#Download Toolkit
Invoke-WebRequest -Uri $ToolkitDownload  -OutFile $ToolkitOutFile | Out-Null

#Downloads Powershell Script
Invoke-WebRequest -Uri $PowershellDownload  -OutFile $PowershellOutFile | Out-Null

#Extract Toolkit
Unblock-File -Path "$env:UserProfile\Downloads\PSAppDeployToolkit_v3.8.4.zip"
Expand-Archive -Path "$env:UserProfile\Downloads\PSAppDeployToolkit_v3.8.4.zip" -DestinationPath $env:UserProfile\Downloads\PADT
Copy-Item -Path "$env:UserProfile\Downloads\PADT\Toolkit\AppDeployToolkit" -Destination "$env:UserProfile\Downloads\NetExtender" -Recurse
Copy-Item -Path "$env:UserProfile\Downloads\PADT\Toolkit\Files" -Destination "$env:UserProfile\Downloads\NetExtender\Files"

#Run Installation
Powershell.exe -ExecutionPolicy Bypass $PowershellOutFile -DeploymentType "Install" -DeployMode "Silent"
