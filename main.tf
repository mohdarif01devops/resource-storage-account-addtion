resource "azurerm_resource_group" "rg" {
    count=var.rg-count
  name     = "rg-terraform-${count.index}"
  location = var.rg-location
}

# resource "azurerm_storage_account" "storage-block" {
#   depends_on = [ azurerm_resource_group.rg ]
#   name                     = "storageterraform01nest"
#   resource_group_name      = azurerm_resource_group.rg.name
#   location                 = azurerm_resource_group.rg.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }
