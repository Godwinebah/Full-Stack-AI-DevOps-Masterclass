output "ec2_public_ip" {
  description = "Public IP of the instance"
  value       = aws_instance.demo_ec2.public_ip
  sensitive   = false
}

output "ec2_private_ip" {
  description = "Private IP of the instance"
  value       = aws_instance.demo_ec2.private_ip
  sensitive   = false
}

output "ec2_instance_arn" {
  description = "ARN of the instance"
  value       = aws_instance.demo_ec2.arn
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.demo_ec2.id
}

output "s3_bucket_name" {
  description = "Name of S3 Bucket"
  value       = aws_s3_bucket.demo_bucket.bucket
}

output "iam_user_name" {
  description = "IAM user created by Terraform"
  value       = aws_iam_user.demo_user.name
}

output "iam_user_arn" {
  description = "IAM user ARN"
  value       = aws_iam_user.demo_user.arn
}