#Log into your Azure subscription
Login-AzureRmAccount
#list available subscriptions 
Get-AzureRmSubscription
#Set subscription as default (if you also have membership in other subscriptions)
Set-AzureRmContext -SubscriptionId ee0ed2ab-b709-4659-xxxxxxxxxxxx