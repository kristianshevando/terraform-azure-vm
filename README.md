## Inputs

| Name | Description | ParameterType | Example | ValueType | Default |
|------|-------------|----------|---------|:----:|:-----:|
| nsg\_id | Network security group's Azure ID |**Required** | | string | `""` |
| resource\_group-location | Azure resource group location. &nbsp;More details [here](https://azure.microsoft.com/en-us/global-infrastructure/regions/). |**Required** |```"westeurope"``` | string | `""` |
| resource\_group-name | Azure resource group name |**Required** |```"myresourcegroup"``` | string | `""` |
| resource\_name\_pattern | Azure resource name pattern |**Required** |```"myresource"``` | string | `""` |
| subnet-subnet\_id | Subnet's Azure ID |**Required** | | string | `""` |
| vm-admin\_password | Linux VM's admin password. |**Required** |```Pa$$w0rd``` | string | `""` |
| vm-admin\_username | Linux VM's admin username. |**Required** |```admin``` | string | `""` |
| vm-count | Desired amount of Azure VMs |**Required** | | string | `"1"` |
| vm-image\_offer | Linux VM's image offer. |**Required** |```UbuntuServer``` | string | `""` |
| vm-image\_publisher | Linux VM's image publisher. |**Required** |```Canonical``` | string | `""` |
| vm-image\_sku | Linux VM's image sku. |**Required** |```18.04-LTS``` | string | `""` |
| vm-image\_version | Linux VM's image version. |**Required** |```latest``` | string | `""` |
| vm-is\_public | VM's public key. |**Required** | | string | `"false"` |
| vm-size | Linux VM's size. &nbsp;More details [here](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/sizes). |**Required** |```Standard_D1_v2``` | string | `""` |
| vm-storage\_os\_disk-caching | Linux VM's OS disk caching. |**Required** |```ReadWrite``` | string | `""` |
| vm-storage\_os\_disk-create\_option | Linux VM's OS disk create option. |**Required** |```FromImage``` | string | `""` |
| vm-storage\_os\_disk-managed\_disk\_type | Linux VM's OS Azure managed disk type. |**Required** |```Premium_LRS``` | string | `""` |
| vm-storage\_os\_disk-size\_gb | Linux VM's OS disk size in gigabytes. |**Required** |```40``` | string | `"40"` |

## Outputs

| Name | Description | Example |
|------|-------------|----------|
| public\_ip | VM's Public IP addresses. | |
| vm-id | VM Azure id. | |
| vm-name | VM name. |```"myvm"``` |

