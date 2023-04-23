resource "aws_iam_policy" "s3_policy" {
  name        = var.iam_name
  path        = "/"
  description = "My test policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*",
        ]
        Effect   = "Allow"
        Resource = "${var.ec2_arn}"
      },
    ]
  })
}


#resource "time_sleep" "wait_30_seconds" {
#  create_duration = "300s"
#}

