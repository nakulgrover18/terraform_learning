output "s3_arn" {
  value = aws_s3_bucket.test_bucket.arn
}
output "s3_name" {
  value = aws_s3_bucket.test_bucket.bucket_domain_name
}