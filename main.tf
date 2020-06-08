resource "azurerm_resource_group" "res-group" {
        name = "${var.identifier}-resources"
        location = var.location

        tags = {
            environment = "Dev"
            Key = "DoNotDelete"
        }
}

resource "azurerm_virtual_network" "vnet" {
    name                = "${var.identifier}-network"
    address_space       = ["10.0.0.0/16"]
    location            = var.location
    resource_group_name = azurerm_resource_group.res-group.name

    tags = {
        environment = "Dev"
        Key = "DoNotDelete"
    }
}

resource "azurerm_subnet" "public-subnet" {
    name                 = "${var.identifier}-subnet"
    resource_group_name  = azurerm_resource_group.res-group.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes      = ["10.0.2.0/24"]
}
