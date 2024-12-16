resource "azurerm_key_vault" "key_vault" {
  name                        = var.key_vault_name
  resource_group_name         = var.resource_group_name
  location                    = var.location
  sku_name                    = "standard"
  tenant_id                   = var.tenant_id
}
