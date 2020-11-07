resource "aws_instance" "example" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    Name = "example"
  }

  # List
  security_groups = ["${ aws_security_group.test.name }"]
}