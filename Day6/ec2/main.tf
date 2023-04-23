terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.8"
    }
  }
}
variable "policy_name" {
  description = "Policy Name"
  type = list
  default = ["lambda", "ec2", "s3", "cloudformation"]
}
variable "ec2_arn" {
  default = "arn:ec2::us-east-1:instance/123"
}
resource "aws_iam_policy" "s3_policy" {
  count = length(var.policy_name)
  name        = "test-policy-${var.policy_name[count.index]}"
  path        = "/"
  description = "My test policy for ${var.policy_name[count.index]}"

  policy = templatefile("${path.root}/../iam_policy.json",
    { ec2_instance_arn = var.ec2_arn }
  )
}


How to create specific reosurce
thenn how we can have output using module
how we can configure backend via a file (.hcl) for diff env
what is count and count index
what is file and templatefile how you can pass a varible in a json


