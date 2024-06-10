# Azure credentials
$subscriptionId = "YOUR_SUBSCRIPTION_ID"
$resourceGroupName = "YOUR_RESOURCE_GROUP_NAME"
$vmName = "YOUR_VM_NAME"


# Stop VM
function Stop-VM {
    $vm = Get-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
    if ($vm.Statuses[1].Code -eq 'PowerState/running') {
        Stop-AzVM -ResourceGroupName $resourceGroupName -Name $vmName -Force
        Write-Host "Stopping VM $($vm.Name)..."
    } else {
        Write-Host "VM $($vm.Name) is already stopped."
    }
}

# Main script
param (
    [string]$action
)

if ($action -eq "start") {
    Start-VM
} elseif ($action -eq "stop") {
    Stop-VM
} else {
    Write-Host "Invalid action. Please specify 'start' or 'stop'."
}