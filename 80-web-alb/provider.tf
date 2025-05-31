terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.93.0"
    }
  }

  backend "s3" {
    bucket = "tagore-bucket-01"
    key    = "expense-dev-web-alb" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "tagore-dynamoDB-01"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}