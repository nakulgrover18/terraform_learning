terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
#### Conditional Expressions ####
variable "condition" {
  description = "Condition to create "
}

resource "aws_instance" "dev" {
    ami = "ami-02396cdd13e9a1257"
    instance_type = "t2.micro"
    count = var.condition == true ? 1 : 0
    tags = {
    Name = "ec2-terraform"
  }
}

resource "aws_instance" "uat" {
    ami = "ami-02396cdd13e9a1257"
    instance_type = "m5.large"
    count = var.condition == false ? 3 : 0
    tags = {
    Name = "ec2-terraform"
  }
}

###### Local #####

variable "email_id" {
  default = ""
}

locals {
  common_tags = {
    Name = "ec2-terraform"
    Environment = "dev"
    owner_id = var.email_id
  }
}

resource "aws_instance" "ec2" {
    ami = "ami-02396cdd13e9a1257"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "test"
  tags = local.common_tags
}