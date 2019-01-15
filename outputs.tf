# VM name. |
# ```
# "myvm"
# ```
output "vm-name" {
  value = "${azurerm_virtual_machine.this.*.name}"
}

# VM Azure id. |
output "vm-id" {
  value = "${azurerm_virtual_machine.this.*.id}"
}

# VM's Public IP addresses. |
output "public_ip" {
  value = "${azurerm_public_ip.this.*.ip_address}"
}

