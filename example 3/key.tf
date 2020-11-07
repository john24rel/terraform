resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion"
  public_key = "${ file("~/.ssh/id_rsa.pub") }"
}