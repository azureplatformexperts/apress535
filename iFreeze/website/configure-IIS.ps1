Add-WindowsFeature Web-Server
Start-Sleep -s 30
Remove-Item -path "C:\inetpub\wwwroot" -Force -Recurse -ErrorAction SilentlyContinue
$dbsource = "https://ifreezwebartifacts.blob.core.windows.net/downloads/default.html"
$dbdestination = "C:\inetpub\wwwroot\Default.html"
Invoke-WebRequest $dbsource -OutFile $dbdestination
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $($env:computername)