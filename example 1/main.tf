# HCL (HashiCorp Configuration Language) 

provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCkzQCcChKFycIWNj/XHB8pli/ar1U6UWT24MxO2q46l5CJ0nZ2sG612R511RojA3UTNRWCpDdolXHpaONvuWU3HVVX/WIVtqGlxwdPN1BF6zREY9OuO/CONqwo6hYCLCGwlI3WNSXCAjHA1Cztne42fy7nzUNVZQ0kDdawg8Ud7jt0rWYqsbZce6SChrB6mmPRpQG8wyk5jgaGPK1kjRMCBp2pHvgVK39NG769XGwaEfVatiiVsF9nLbU+iL2WgkcOcvzdBXiTNU72qUIw2rdIemAmSLSQO/okkhJLf5bgF+JeQAjGxkyMouHNk0MaiWkbiRyICbOnzd8+y52hzPI/ ec2-user@Bastion"
}
