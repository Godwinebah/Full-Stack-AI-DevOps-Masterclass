output "s3_bucket_terraform_state_arn" {
  value = aws_s3_bucket.terraform_state.arn
}

output "s3_bucket_terraform_state_name" {
  value = aws_s3_bucket.terraform_state.name
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_locks.name
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.terraform_locks.arn
}