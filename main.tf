# Minimum azure provider to use
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.54.0"
    }
  }
}


resource "azurerm_public_ip" "bastion_pip" {
  name                = var.bastion_pip_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = var.tags
}


resource "azurerm_bastion_host" "bastion_host" {
  name                = var.bastion_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                 = "bastion-ip-configuration"
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.bastion_pip.id
  }
}