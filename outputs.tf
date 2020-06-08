output "res_group_name" {
    value = azurerm_resource_group.res-group.name
}

output "subnet_id" {
    value = azurerm_subnet.public-subnet.id
}
