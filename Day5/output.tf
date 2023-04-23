output "instance_private" {
  value = module.ec2_instance.instance_private
}
output "s3_arn" {
  value = module.s3_bucket.s3_arn
}
output "s3_name" {
  value = module.s3_bucket.s3_name
}