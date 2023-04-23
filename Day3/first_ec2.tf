provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4GJBD42OOCYTOGFH"
  secret_key = "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"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


resource "aws_instance" "testing" {
    ami = "ami-02396cdd13e9a1257"
    instance_type = var.ec2_instance_type
    tags = {
    Name = "ec2-terraform"
  }
}
