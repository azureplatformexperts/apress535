Install-WindowsFeature -name Web-Server -IncludeManagementTools
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $($env:computername)