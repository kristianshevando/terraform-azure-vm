resource "azurerm_public_ip" "this" {
    count                        = "${var.vm-is_public ? var.vm-count : 0}"
    name                         = "${var.resource_name_pattern}-publicip-${count.index}"
    location                     = "${var.resource_group-location}"
    resource_group_name          = "${var.resource_group-name}"
    public_ip_address_allocation = "static"
}

resource "azurerm_network_interface" "this" {
    count                     = "${var.vm-count}"
    name                      = "${var.resource_name_pattern}-vmnic-${count.index}"
    location                  = "${var.resource_group-location}"
    resource_group_name       = "${var.resource_group-name}"
    network_security_group_id = "${var.nsg_id}"
    ip_configuration          = {
        name                          = "${var.resource_name_pattern}-ipconfig"
        subnet_id                     = "${var.subnet-subnet_id}"
        private_ip_address_allocation = "dynamic"
        public_ip_address_id          = "${var.vm-is_public ? element(concat(azurerm_public_ip.this.*.id, list("")), count.index) : ""}"
    }
}

resource "azurerm_virtual_machine" "this" {
    count                 = "${var.vm-count}"
    name                  = "${var.resource_name_pattern}-vm-${count.index}"
    resource_group_name   = "${var.resource_group-name}"
    network_interface_ids = ["${element(azurerm_network_interface.this.*.id, count.index)}"]
    vm_size               = "${var.vm-size}"
    location              = "${var.resource_group-location}"

    storage_image_reference {
        publisher = "${var.vm-image_publisher}"
        offer     = "${var.vm-image_offer}"
        sku       = "${var.vm-image_sku}"
        version   = "${var.vm-image_version}"
    }

    storage_os_disk {
        name              = "${var.resource_name_pattern}-vm-${count.index}-osdisk"
        caching           = "${var.vm-storage_os_disk-caching}"
        disk_size_gb      = "${var.vm-storage_os_disk-size_gb}"
        create_option     = "FromImage"
        managed_disk_type = "${var.vm-storage_os_disk-managed_disk_type}"
    }

    os_profile {
        computer_name  = "${var.resource_name_pattern}-vm-${count.index}"
        admin_username = "${var.vm-admin_username}"
        admin_password = "${var.vm-admin_password}"
    }

    os_profile_linux_config {
        disable_password_authentication = false
    }
}
