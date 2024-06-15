provider "aws" {
  region                   = "us-east-2"
  shared_credentials_files = ["~/.aws/credentials"]
}

terraform {
  backend "s3" {
    bucket = "gha-tf-sheraz"
    key = "statefiles2/terraform.tfstate"
    region = "us-east-2"
  }
}