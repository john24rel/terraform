# terraform-iaac-august-2020
# terraform-iaac-august-2020
```
module "VPC" {
  source              = "../"
  region              = "us-east-1"
  cidr_block          = "10.0.0.0/16"
  private_cidr_block1 = "10.0.1.0/24"
  private_cidr_block2 = "10.0.2.0/24"
  private_cidr_block3 = "10.0.3.0/24"
  public_cidr_block1  = "10.0.101.0/24"
  public_cidr_block2  = "10.0.102.0/24"
  public_cidr_block3  = "10.0.103.0/24"

  tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Team        = "DevOps"
    Department  = "Operations"
    Bill        = "CFO"
    Quarter     = "1"
  }
}

```

### Get the output

```
output "vpc_id" {
    value = "${module.VPC.vpc_id}"
}

output "private_subnet1" {
    value = "${module.VPC.private_subnet1}"
}
output "private_subnet2" {
    value = "${module.VPC.private_subnet2}"
}
output "private_subnet3" {
    value = "${module.VPC.private_subnet3}"
}
output "public_subnet1" {
    value = "${module.VPC.private_subnet1}"
}

output "public_subnet2" {
    value = "${module.VPC.private_subnet2}"
}

output "public_subnet3" {
    value = "${module.VPC.private_subnet3}"
}

output "tags" {
    value = "${module.VPC.tags}"
}
```