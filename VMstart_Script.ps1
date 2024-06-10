# Azure credentials
$subscriptionId = "YOUR_SUBSCRIPTION_ID"
$resourceGroupName = "YOUR_RESOURCE_GROUP_NAME"
$vmName = "YOUR_VM_NAME"



# Start VM
function Start-VM {
    $vm = Get-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
    if ($vm.Statuses[1].Code -eq 'PowerState/deallocated') {
        Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
        Write-Host "Starting VM $($vm.Name)..."
    } else {
        Write-Host "VM $($vm.Name) is already running."
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
