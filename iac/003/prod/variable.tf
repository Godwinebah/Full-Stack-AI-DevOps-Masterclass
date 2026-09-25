variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "instance_name" {
  type = string
  description = "EC2 instance name"
}

variable "enable_monitoring" {
  type        = bool
  description = "Enable monitoring "
}

variable "environment" {
  type        = string
  description = "Environment name"
}

variable "iam_user_name" {
  type        = string
  description = "Name of the IAM user"
}

variable "iam_user_purpose" {
  type        = string
  description = "Purpose tag of the IAM user"
}

variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "bucket_purpose" {
  type        = string
  description = "Purpose tag of the S3 bucket"
}

variable "enable_versioning" {
  type        = bool
  description = "Enable versioning for the S3 bucket"
  default     = false
}