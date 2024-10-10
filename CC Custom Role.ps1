﻿$role = Get-AzRoleDefinition "Reader"
$role.Id = $null
$role.Name = "CC_Custom"
$role.Description = "Custom for CycleCloud."
$role.Actions.Clear()
$role.Actions.Add("Microsoft.Commerce/Ratecard/read")
$role.Actions.Add("Microsoft.Compute/*/read")
$role.Actions.Add( "Microsoft.Compute/availabilitySets/*")
$role.Actions.Add("Microsoft.Compute/disks/*")
$role.Actions.Add("Microsoft.Compute/images/read")
$role.Actions.Add("Microsoft.Compute/locations/usages/read")
$role.Actions.Add("Microsoft.Compute/register/action")
$role.Actions.Add("Microsoft.Compute/skus/read")
$role.Actions.Add("Microsoft.Compute/virtualMachines/*")
$role.Actions.Add("Microsoft.Compute/virtualMachineScaleSets/*")
$role.Actions.Add("Microsoft.Compute/virtualMachineScaleSets/virtualMachines/*")
$role.Actions.Add("Microsoft.ManagedIdentity/userAssignedIdentities/*/assign/action")
$role.Actions.Add("Microsoft.Network/*/read")
$role.Actions.Add("Microsoft.Network/locations/*/read")
$role.Actions.Add("Microsoft.Network/networkInterfaces/read")
$role.Actions.Add("Microsoft.Network/networkInterfaces/write")
$role.Actions.Add("Microsoft.Network/networkInterfaces/delete")
$role.Actions.Add("Microsoft.Network/networkInterfaces/join/action")
$role.Actions.Add("Microsoft.Network/networkSecurityGroups/read")
$role.Actions.Add("Microsoft.Network/networkSecurityGroups/write")
$role.Actions.Add("Microsoft.Network/networkSecurityGroups/delete")
$role.Actions.Add("Microsoft.Network/networkSecurityGroups/join/action")
$role.Actions.Add("Microsoft.Network/register/action")
$role.Actions.Add("Microsoft.Network/virtualNetworks/read")
$role.Actions.Add("Microsoft.Network/virtualNetworks/subnets/read")
$role.Actions.Add("Microsoft.Network/virtualNetworks/subnets/join/action")
$role.Actions.Add("Microsoft.Resources/deployments/read")
$role.Actions.Add("Microsoft.Resources/subscriptions/resourceGroups/read")
$role.Actions.Add("Microsoft.Resources/subscriptions/resourceGroups/resources/read")
$role.Actions.Add("Microsoft.Resources/subscriptions/operationresults/read")
$role.Actions.Add("Microsoft.Storage/*/read")
$role.Actions.Add("Microsoft.Storage/checknameavailability/read")
$role.Actions.Add("Microsoft.Storage/register/action")
$role.Actions.Add("Microsoft.Storage/storageAccounts/read")
$role.Actions.Add("Microsoft.Storage/storageAccounts/listKeys/action")
$role.Actions.Add("Microsoft.Storage/storageAccounts/write")
$role.Actions.Add("Microsoft.Authorization/*/read")
$role.Actions.Add("Microsoft.Authorization/roleAssignments/*")
$role.Actions.Add("Microsoft.Authorization/roleDefinitions/*")
$role.Actions.Add("Microsoft.Resources/subscriptions/resourceGroups/read")
$role.Actions.Add("Microsoft.Resources/subscriptions/resourceGroups/write")
$role.Actions.Add("Microsoft.Resources/subscriptions/resourceGroups/delete")
$role.AssignableScopes.Clear()
$role.AssignableScopes.Add("/subscriptions/b6ae4379-bd04-481e-904a-32052674296b")
New-AzRoleDefinition -Role $role
