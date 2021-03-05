$projectName = "dnsProject"
$templateFile = "C:\temp\repo\Azure-DNS-Test\azuredeploy.json"
$resourceGroupName = "dns-test-deligation"
$location = "uksouth"


New-AzResourceGroup -Name $resourceGroupName -Location $location

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile ./azuredeploy.json -templateParameterFile ./azuredeploy.parameters.json




  #Remove-AzResourceGroup -Name $resourceGroupName