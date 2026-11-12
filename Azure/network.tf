# Groups all Azure resources so they can be managed together.
# Creates the private network used by the VM.
resource "azurerm_virtual_network" "lab" {
  name                = "session6-vnet"
  location            = azurerm_resource_group.lab.location
  resource_group_name = azurerm_resource_group.lab.name
  address_space       = ["10.60.0.0/16"]
}

# Creates a smaller network inside the virtual network.
resource "azurerm_subnet" "lab" {
  name                 = "web"
  resource_group_name  = azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = ["10.60.1.0/24"]
}

# Assigns a public IP address to the VM.
resource "azurerm_public_ip" "vm" {
  name                = "session6-vm-ip"
  location            = azurerm_resource_group.lab.location
  resource_group_name = azurerm_resource_group.lab.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Connects the VM to the subnet and public IP.
resource "azurerm_network_interface" "vm" {
  name                = "session6-vm-nic"
  location            = azurerm_resource_group.lab.location
  resource_group_name = azurerm_resource_group.lab.name

  # Defines how the network interface receives its addresses.
  ip_configuration {
    name                          = "public"
    subnet_id                     = azurerm_subnet.lab.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm.id
  }
}
