provider "aws" {
    region = "ap-south-1"
  
}
module "ec2-basic" {
source ="./modules/vpc"  
}
terraform {
  backend "s3" {
    bucket = "cdecb36-bucket007"
    key    = "demo/terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "my-terra-table780-7"
  }
}