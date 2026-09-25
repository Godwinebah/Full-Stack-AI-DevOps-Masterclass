

# ----------------
#Terraform Block
# --------------
# This block tells Terraform :
# 1. Which provider are required for this configuration
# 2. Where to download the provider from
# 3. The version of the provider to use

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.31.0"
    }
  }
  required_version = ">= 1.3.0"
}

# ----------------
#   Provider Configuration
# ----------------
provider "aws" {
  region = ap-south-1
}

# ----------------
#   Resource block (AWS EC2 Instance)
# ----------------
# This block defines an AWS EC2 instance resource with the specified AMI ID and instance type. 
# The instance type is defined as a variable, allowing for flexibility in specifying different instance types when deploying the infrastructure.

resource "aws_instance" "demo_ec2" {
  ami = "ami-0ff5003538b60d2ec"
  instance_type = var.instance_type

  tags = {
    Name = "terraform-demo"
  }
}

# ----------------
#   IAM User Resource
# ----------------
resource "aws_iam_user" "demo_user" {
  name = "terraform-demo-user    "

  tags = {
    purpose = "terraform-demo"
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terraform-demo-bucket-245276523558"

  tags = {
    Purpose = "terraform-demo"
    environment = "demo"
  }
}

resource "aws_s3_bucket_versioning" "demo_bucket_versioning" {
  bucket = aws_s3_bucket.demo_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}