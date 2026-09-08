terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Store state in your existing S3 bucket
  backend "s3" {
    bucket = "siva-terraform-state-127621462534"
    key    = "terraform-aws-project/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = var.aws_region
}