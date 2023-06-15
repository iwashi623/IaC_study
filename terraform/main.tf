terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      "createdBy" = "terraform apply"
    }
  }
}

resource "aws_s3_bucket" "test_by_terraform" {
  bucket = "test-by-terraform"
}
