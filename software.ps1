# Download PowerShell
$Filename = "powershell7.msi"
Invoke-WebRequest -UseBasicParsing -Uri "https://github.com/PowerShell/PowerShell/releases/download/v7.4.1/PowerShell-7.4.1-win-x64.msi" -OutFile $Filename

# Install PowerShell silently
Start-Process msiexec.exe -Wait -ArgumentList "/package $($Filename) /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1"

# Remove install file
Remove-Item $Filename

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Refresh environment variables
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

# Install programs with Chocolatey
choco install pestudio -y
choco install volatility -y
choco install filezilla -y
choco install 7zip -y
choco install hxd -y
choco install sysinternals -y
choco install openoffice -y
choco install autopsy -y
choco install adobereader -y
choco install googlechrome -y
choco install notepadplusplus -y
choco install sublimetext3 -y
choco install arsenalimagemounter -y
choco install microsoftazurestorageexplorer -y
choco install chainsaw -y
