terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }

  backend "s3" {
  }
  
}


#provide the authentication 
provider "aws" {
  region = "us-east-1"
}