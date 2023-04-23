provider "aws" {
  region     = "us-east-1"
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.8"
    }
  }
}

module "ec2_instance" {
  source            = "./ec2"
  ec2_instance_type = var.ec2_instance
}

module "s3_bucket" {
  source      = "./s3"
  bucket_name = var.bucket_name
}

module "iam_policy" {
  source  = "./iam"
  ec2_arn = module.ec2_instance.instance_arn
}