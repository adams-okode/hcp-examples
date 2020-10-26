terraform {
  required_version = "~>0.13"
  required_providers {
    aws = {
      version = "~> 3.4.0"
    }
    random = {
      version = "~> 2.3.0"
    }
    null = {
      version = "~> 2.1.2"
    }
  }
 
  backend "remote" {
    organization = "kodo-sensei"

    workspaces {
      name = "test"
    }
  
  }

}

provider "aws" {
  region = var.region
  access_key = var.aws.key
  secret_key = var.aws.secret
}