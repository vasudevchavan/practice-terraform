terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.73.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "aws" {
 profile = "default"
 region = var.region
}