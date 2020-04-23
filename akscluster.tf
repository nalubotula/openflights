# Configure the Azure Provider
provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=1.38.0"

  subscription_id = "61f9d2ec-234d-43a4-bb46-a491f3ba3074"
  tenant_id       = "Vijay-Kumar-Nalubotula@simplilearnb2c2.onmicrosoft.com"
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "production"
  location = "West US"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "production-network"
  resource_group_name = "${azurerm_resource_group.example.name}"
  location            = "${azurerm_resource_group.example.location}"
  address_space       = ["10.0.0.0/16"]
}