# PROVIDER
terraform {

  required_version = "~> 1.5.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

  backend "s3" {
    bucket         = "fishinho"
    key            = "LockID"
    dynamodb_table = "fishinho"
    region         = "us-east-1"
  }

}
