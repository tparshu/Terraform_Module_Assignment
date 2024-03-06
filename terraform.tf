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
  access_key = "AKIA4MTWHUEMLKMAKZBT"
  secret_key = "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"
  region     = "us-east-1"

}
