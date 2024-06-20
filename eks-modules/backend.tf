terraform {
  backend "s3" {
    bucket = "sherazanwarbucket"
    key = "statefiles/terraform.tfstate"
    region = "us-east-2"
  }
}