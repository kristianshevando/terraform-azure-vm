# VM's public key. |
# **Required** |
variable "vm-is_public" {
    default = "false"
}

# Azure resource name pattern |
# **Required** |
# ```
# "myresource"
# ```
variable "resource_name_pattern" {
    default = ""
}

# Azure resource group name |
# **Required** |
# ```
# "myresourcegroup"
# ```
variable "resource_group-name" {
    default = ""
}

# Azure resource group location. &nbsp;
# More details [here](https://azure.microsoft.com/en-us/global-infrastructure/regions/). |
# **Required** |
# ```
# "westeurope"
# ```
variable "resource_group-location" {
    default = ""
}

# Subnet's Azure ID |
# **Required** |
variable "subnet-subnet_id" {
    default = ""
}

# Desired amount of Azure VMs |
# **Required** |
variable "vm-count" {
    default = "1"
}

# Network security group's Azure ID |
# **Required** |
variable "nsg_id" {
    default = ""
}

# Linux VM's size. &nbsp;
# More details [here](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/sizes). |
# **Required** |
# ```
# Standard_D1_v2
# ```
variable "vm-size" {
    default = ""
}

# Linux VM's image publisher. |
# **Required** |
# ```
# Canonical
# ```
variable "vm-image_publisher" {
    default = ""
}

# Linux VM's image offer. |
# **Required** |
# ```
# UbuntuServer
# ```
variable "vm-image_offer" {
    default = ""
}

# Linux VM's image sku. |
# **Required** |
# ```
# 18.04-LTS
# ```
variable "vm-image_sku" {
    default = ""
}

# Linux VM's image version. |
# **Required** |
# ```
# latest
# ```
variable "vm-image_version" {
    default = ""
}

# Linux VM's admin username. |
# **Required** |
# ```
# admin
# ```
variable "vm-admin_username" {
    default = ""
}

# Linux VM's admin password. |
# **Required** |
# ```
# Pa$$w0rd
# ```
variable "vm-admin_password" {
    default = ""
}

# Linux VM's OS disk caching. |
# **Required** |
# ```
# ReadWrite
# ```
variable "vm-storage_os_disk-caching" {
    default = ""
}

# Linux VM's OS disk size in gigabytes. |
# **Required** |
# ```
# 40
# ```
variable "vm-storage_os_disk-size_gb" {
    default = "40"
}

# Linux VM's OS disk create option. |
# **Required** |
# ```
# FromImage
# ```
variable "vm-storage_os_disk-create_option" {
    default = ""
}

# Linux VM's OS Azure managed disk type. |
# **Required** |
# ```
# Premium_LRS
# ```
variable "vm-storage_os_disk-managed_disk_type" {
    default = ""
}
