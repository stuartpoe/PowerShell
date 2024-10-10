$tenantID = '825d9ed3-9216-4a99-a96b-d09234511756' 
$SubID = 'b6ae4379-bd04-481e-904a-32052674296b'
$loc ='EastUS2'

$rgCC = 'rg-cyclecloud'
$rgnetwork ='rg-networking'
$rgstorage = 'rg-storage'

$vnet ='vnet-cyclecloud'
$subnet1 =New-AzVirtualNetworkSubnetConfig -Name Subnet1 -AddressPrefix "10.0.1.0/24"
$subnet2 =New-AzVirtualNetworkSubnetConfig -Name Subnet2 -AddressPrefix "10.0.2.0/24"
$subnet3 =New-AzVirtualNetworkSubnetConfig -Name Subnet3 -AddressPrefix "10.0.3.0/24"

$storage ='cyccldstoragetst'
$storagesku = 'Standard_LRS'
#$ctx= New-AzStorageContext -ResourceGroupName $rgstorage -Name $storage -Location $loc -SkuName $storagesku
#$container = "cyclecloud"


#Connect-AzAccount -Tenant $tenantID -SubscriptionId $SubID

#CycleCloud
New-AzResourceGroup -name $rgCC -Location $loc

#Networking
New-AzResourceGroup -name $rgnetwork -Location $loc
New-AzVirtualNetwork -name $vnet  -ResourceGroupName $rgnetwork -Location $loc -AddressPrefix '10.0.0.0/22' -Subnet $Subnet1,$Subnet2,$subnet3


#Storage
New-AzResourceGroup -name $rgstorage -Location $loc
New-AzStorageAccount -ResourceGroupName $rgstorage -Name $storage -Location $loc -SkuName $storagesku
#New-AzStorageContainer -Name $container  -Permission Off -Context $ctx