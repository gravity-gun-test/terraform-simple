# Create Resource Group
module "qa_resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = "qa-resource-group"
  location            = "East US"
}

# Create Key Vault in Resource Group
module "key_vault" {
  source               = "../../modules/key_vault"
  key_vault_name       = "qakeyvault19"
  resource_group_name  = module.qa_resource_group.resource_group_name
  location             = "East US"
  tenant_id            = var.tenant_id
}

