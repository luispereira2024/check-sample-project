provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = "checkov-sample-bucket-${random_id.bucket_id.hex}"
  acl    = "public-read"

  tags = {
    Name        = "CheckovExample"
    Environment = "Dev"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 8
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "CheckovExampleInstance"
  }
}
