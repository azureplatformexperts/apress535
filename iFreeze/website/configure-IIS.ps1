Add-WindowsFeature Web-Server
Start-Sleep -s 30
Remove-Item -path "C:\inetpub\wwwroot" -Force -Recurse -ErrorAction SilentlyContinue
New-Item -ItemType directory -Path "C:\inetpub\wwwroot\"
$dbsource1 = "https://ifreezwebartifacts.blob.core.windows.net/downloads/default.html"
$dbsource2 = "https://ifreezwebartifacts.blob.core.windows.net/downloads/ifreezewebsite.gif"
$dbdestination1 = "C:\inetpub\wwwroot\default.html"
$dbdestination2 = "C:\inetpub\wwwroot\ifreezewebsite.gif"
Invoke-WebRequest $dbsource1 -OutFile $dbdestination1
Invoke-WebRequest $dbsource2 -OutFile $dbdestination2