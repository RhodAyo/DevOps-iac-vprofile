terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.25.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }

  backend "s3" {
    bucket = "vprofile-tfstate-ayomide-oluwole-2026"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }

  required_version = ">= 1.6.0"
}

provider "aws" {
  region = var.region
}

# test comment
