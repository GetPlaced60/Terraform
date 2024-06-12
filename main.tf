resource "aws_instance" "web" {
  ami           = "ami-ID" 
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform"
    env = "production"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "terra-test-5628"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}