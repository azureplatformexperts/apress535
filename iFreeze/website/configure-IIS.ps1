Add-WindowsFeature Web-Server
Start-Sleep -s 10
Remove-Item -Path C:\inetpub\wwwroot\Default.html -Force -
$dbsource = "https://ifreezwebartifacts.blob.core.windows.net/downloads/default.html"
$dbdestination = "C:\inetpub\wwwroot\Default.html"
Invoke-WebRequest $dbsource -OutFile $dbdestination
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $($env:computername)