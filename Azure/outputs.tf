# Displays the VM public IP after Terraform creates it.
output "public_ip" {
  value = azurerm_public_ip.vm.ip_address
}
