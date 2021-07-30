output "bastion_host_id" {
  description = "The ID of the new Bastion host."
  value       = azurerm_bastion_host.bastion_host.id
}

output "bastion_dns_name" {
  description = "The DNS name of the new Bastion Host"
  value       = azurerm_bastion_host.bastion_host.dns_name
}

output "public_ip_address" {
  description = "The Public IP Address allocated to the Bastion."
  value       = azurerm_public_ip.bastion_pip.ip_address
}

output "public_ip_id" {
  description = "The ID of the new Public IP Address allocated to the Bastion."
  value       = azurerm_public_ip.bastion_pip.id
}