provider "aws" {
  region     = "us-east-1"
  access_key = "AWS_ACCESS_KEY"
  secret_key = "AWS_SECRET_KEY"
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
    instance_type = "t2.micro"
    tags = {
    Name = "test-ec2-terraform"
  }
}
