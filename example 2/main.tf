provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCUOM4jjcu0j1hU4xzbpwgNmnlMP4ta0RQhysqMovbo7su8V6tijBPUBrYcYDv2w4yuAk70VbYHYTD8WSmDSEwy8/t3dpJfIu//ISbCA8P/p8Kgf2yfIkO2fJen4LA56/jnqn3GClcVfK9fzwrGYP/ocfoCScpf5j9uGIoZl55BFrKwQ/7H03KfuFoBEZcpPCpI6w9pX6lGe7Od3lqu2O7ezQztUpfwAZdLMqxHa5704HvqnbYSJkWj68SSNe8J3jV3/d/pFjBgF+cPp9zQVliJCepDr1jiS6kVSb4Lwaib+yBEhnlW4iH9rlpl7LEe080qu+rHrRcaJ4Hzg4TpvMR5 ec2-user@Bastion"
}

resource "aws_instance" "exmaple" {
  key_name      = "bastion"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
}
