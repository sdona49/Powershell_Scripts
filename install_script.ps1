$path = "c:\"
$log_date = Get-Date -Format "MM-dd-yyyy-HHmmss" #used to timestamp the log file this scrip generates
$PowershellOutFile = "$env:UserProfile\Downloads\NetExtender\Deploy-NetExtender.ps1"


cmd.exe /c "msiexec /i $PowershellOutFile /norestart /qn netlogon=true /l $path\$log_date-action.log"
#Run Installation
#Powershell.exe -ExecutionPolicy Bypass $PowershellOutFile -DeploymentType "Install" -DeployMode "NonInteractive"
