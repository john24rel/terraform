module "ss" {
    source                  = "../"
    resource_group_name     = "example-resources"
    resource_group_location = "West Europe"
    ss_name                 = "example-ss"
    admin_username          = "admin"
    instances               = 1
    sku                     = "Standard_F2"
    address_prefixes        = ["10.0.2.0/24"]
    subnet_name             = "subnet1"
    address_space           = ["10.0.0.0/16"]
    vpc_name                = "example1"
    publisher               = "Canonical"
    offer                   = "UbuntuServer"
    os_sku                  = "16.04-LTS"
    os_version              = "latest"
}
