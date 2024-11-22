provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.33"
    }
  }
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket = "rafal-galan-panda-devops-core-19"
    key = "infra/terraform.state"
    region = "us-east-1"
  }
}
