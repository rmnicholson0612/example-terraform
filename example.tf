provider "aws" {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-its-super"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
