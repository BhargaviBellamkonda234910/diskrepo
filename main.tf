resource "azurerm_resource_group" "example" {
  name     = "diskrg234"
  location = "West Europe"
  tags = {owner = "devopsteam1"}
}

resource "azurerm_managed_disk" "example" {
  name                 = "datadisk234"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "40"
}
