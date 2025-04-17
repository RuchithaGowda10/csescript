# install-devtools.ps1

# Install Chocolatey (Windows package manager)
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Visual Studio Code
choco install vscode -y

# Install Python
choco install python -y

# Install Git (Git Bash included)
choco install git -y
