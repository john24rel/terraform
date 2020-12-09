variable "resource_group_name" {}
variable "resource_group_location" {}
variable "ss_name" {}
variable "admin_username" {}
variable "instances" {}
variable "sku" {}
variable "address_prefixes" {
    type = list
}
variable "subnet_name" {}
variable "address_space" {
    type = list
}
variable "vpc_name" {}
variable "publisher" {}
variable "offer" {}
variable "os_sku" {}
variable "os_version" {}