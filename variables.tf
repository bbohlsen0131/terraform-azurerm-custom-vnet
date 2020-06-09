variable "location" {
    description = "Region to be used for provisioning"
}

variable "identifier" {
    description = "Unique identifier to avoid name collisions"
}

variable "cidr_block" {
    description = "CIDR block"
    default = "10.0.0.0/16"
}
