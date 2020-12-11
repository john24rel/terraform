resource "aws_s3_bucket" "test-bucket-terraform" {
  bucket = "oshikoya-bucket-terraform"
  force_destroy               = true
  
  tags = {
    Name       = "My_bucket"
    Enviroment = "Dev"
    acl        = "private"
  }

  versioning {
    enabled = true
    
  }
}