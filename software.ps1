# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Refresh environment variables
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

# Disable requirement for confirmation
choco feature enable -n=allowGlobalConfirmation

# Install programs with Chocolatey
choco install filezilla 7zip git googlechrome hxd vlc python adobereader notepadplusplus sublimetext3 microsoftazurestorageexplorer sysinternals openoffice
