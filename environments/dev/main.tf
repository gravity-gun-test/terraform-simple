# Create Resource Group
module "resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = "dev-resource-group"
  location            = "East US"
}

# Create Storage Account in Resource Group
module "storage_account" {
  source              = "../../modules/storage_account"
  storage_account_name = "devstorageacc19"
  resource_group_name  = module.resource_group.resource_group_name
  location             = "East US"
}