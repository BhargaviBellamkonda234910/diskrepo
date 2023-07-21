resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
tags = {createdby="devopsteam234"}

}

resource "azurerm_managed_disk" "example" {
  name                 = var.diskname
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = var.accounttype
  create_option        = var.create
  disk_size_gb         = var.size
}
