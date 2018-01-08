# Define the script for your Custom Script Extension to run
$customConfig = @{
    "fileUris" = (,"https://raw.githubusercontent.com/azureplatformexperts/apress535/master/iFreeze/website/configure-IIS.ps1");
    "commandToExecute" = "powershell -ExecutionPolicy Unrestricted -File configure-iis.ps1"
}

# Get information about the scale set
$vmss = Get-AzureRmVmss `
                -ResourceGroupName "iFreeze-WEB-NEU" `
                -VMScaleSetName "ifreeze"

# Add the Custom Script Extension to install IIS and configure basic website
$vmss = Add-AzureRmVmssExtension `
    -VirtualMachineScaleSet $vmss `
    -Name "customScript" `
    -Publisher "Microsoft.Compute" `
    -Type "CustomScriptExtension" `
    -TypeHandlerVersion 1.8 `
    -Setting $customConfig

# Update the scale set and apply the Custom Script Extension to the VM instances
Update-AzureRmVmss `
    -ResourceGroupName "iFreeze-WEB-NEU" `
    -Name "ifreeze" `
    -VirtualMachineScaleSet $vmss
