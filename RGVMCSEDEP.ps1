Start-Transcript -Path "C:\cse_log.txt" -Append

Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072

Start-Process cmd.exe -ArgumentList "/c iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" -Wait

choco install vscode -y
choco install python -y
choco install git -y

Stop-Transcript
