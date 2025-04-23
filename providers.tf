terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }

  backend "s3" {
    bucket = "my-devops-tfstate-remote-s3buckt"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    #dynamodb_table = "state-lock-dynamodb-table"
    encrypt = true
  }
}

provider "aws" {
  # Configuration options
}