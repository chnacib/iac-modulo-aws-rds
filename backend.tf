provider "aws" {
  region  = var.aws_region
  version = "= 3.0"
}

terraform {
  backend "s3" {
    bucket = "app-rapadura"
    key    = "rds-terraform-rapadura.tfstate"
    region = "us-west-1"
  }
}