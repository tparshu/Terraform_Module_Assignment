terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.0"
    }
  }
}

provider "aws" {
  profile    = "default"
  access_key = <"your access_key0">
  secret_key = <"your secret_key">
  region     = "us-east-1"

}
