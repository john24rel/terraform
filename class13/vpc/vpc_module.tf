module "vpc" {
    source = "./module"
    vpc_name = "test"
    firewall_name = "http-allow"
    public-subnet1-name = "public-subnet1" 
    public-subnet2-name = "public-subnet2" 
    public-subnet3-name = "public-subnet3" 
    ip_cidr_range1 = "10.0.1.0/24"
    ip_cidr_range2 = "10.0.2.0/24"
    ip_cidr_range3 = "10.0.3.0/24"
}