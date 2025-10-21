provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce11-tfstate"
    key    = "vimal-31-tfstate.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "vimal-31-bucket-unique-name-123456"
}