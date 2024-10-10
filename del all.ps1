$rgName = Get-AzResourceGroup 

Foreach($name in $rgName)
{
Write-Host $name.ResourceGroupName
Remove-AzResourceGroup -Name $name.ResourceGroupName -Verbose -Force
}