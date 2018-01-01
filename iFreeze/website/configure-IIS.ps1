Add-WindowsFeature Web-Server
$dbsource = "https://ifreezwebartifacts.blob.core.windows.net/downloads/default.html"
$dbdestination = "C:\inetpub\wwwroot\default.html"
Invoke-WebRequest $dbsource -OutFile $dbdestination