terraform {
    backend "s3" {
    bucket = "smrity-terraform-state"
    key    = "Dev/dev.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

