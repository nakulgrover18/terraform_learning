provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAY6TDF6KRZJLNJ4GB"
  secret_key = "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"
}
terraform {
  backend "s3" {
    bucket         = var.bucket
    key            = var.key
    region         = var.region
    dynamodb_table = var.dynamodb_table
    encrypt = var.encypt
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.8"
    }
  }
}

locals {
  prefix = "ibm-${var.env}"
}

module "ec2_instance" {
  source            = "./ec2"
  ec2_instance_type = var.ec2_instance
}

module "s3_bucket" {
  source      = "./s3"
  bucket_name = "${local.prefix}-lambdas3"
}

module "iam_policy" {
  source  = "./iam"
  ec2_arn = module.ec2_instance.instance_arn
  iam_name = "${local.prefix}-lambda-execution"
}