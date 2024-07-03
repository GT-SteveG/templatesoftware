# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Refresh environment variables
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

# Install programs with Chocolatey
choco install filezilla -y
choco install 7zip -y
choco install adobereader -y
choco install googlechrome -y
choco install notepadplusplus -y
choco install sublimetext3 -y
choco install microsoftazurestorageexplorer -y
choco install openoffice -y
