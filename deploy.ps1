$projectName = "dnsProject"
$templateFile = "C:\temp\repo\Azure-DNS-Test\azuredeploy.json"
$resourceGroupName = "dns-test-deligation"
$location = "uksouth"

Connect-AzAccount -Tenant 31c52172-8234-4c52-b8d8-8fcc7696dc9b

New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile ./azuredeploy.json -templateParameterFile ./azuredeploy.parameters.json -Name $projectName




  #Remove-AzResourceGroup -Name $resourceGroupName