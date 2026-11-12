# Generates the required administrator credential without prompting for it.
resource "random_password" "vm_admin" {
  length  = 24
  special = true
}

# Creates one small Ubuntu Azure virtual machine.
resource "azurerm_linux_virtual_machine" "vm" {
  name                            = "session6-vm"
  location                        = azurerm_resource_group.lab.location
  resource_group_name             = azurerm_resource_group.lab.name
  size                            = "Standard_B1s"
  admin_username                  = "azureuser"
  admin_password                  = random_password.vm_admin.result
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.vm.id]

  # Configures the VM operating-system disk.
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = 30
  }

  # Selects the official Ubuntu 24.04 image from Canonical.
  source_image_reference {
    # Find this in Azure Portal > Virtual machines > Create > Image.
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}
