resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  resource_group_name = var.vm_resource_group_name
  location            = var.location
  allocation_method   = var.public_ip_allocation_method

  tags = local.common_tags
}

resource "azurerm_network_interface" "network_interface" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.vm_resource_group_name

  ip_configuration {
    name                          = var.network_interface_ip_name
    subnet_id                     = module.network.vnet_subnets[0]
    private_ip_address_allocation = var.network_interface_private_ip_address_allocation
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }

  tags = local.common_tags
}

resource "azurerm_network_interface_security_group_association" "nisga" {
  network_interface_id      = azurerm_network_interface.network_interface.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                  = var.vm_name
  resource_group_name   = var.vm_resource_group_name
  location              = var.location
  size                  = var.vm_size
  admin_username        = var.vm_admin_username
  network_interface_ids = [azurerm_network_interface.network_interface.id]

  admin_ssh_key {
    username   = var.vm_admin_username
    public_key = file("./azure-key.pub")
  }

  os_disk {
    caching              = var.vm_os_disk_caching
    storage_account_type = var.vm_os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_source_image_reference_publisher
    offer     = var.vm_source_image_reference_offer
    sku       = var.vm_source_image_reference_sku
    version   = var.vm_source_image_reference_version
  }

  tags = local.common_tags
}