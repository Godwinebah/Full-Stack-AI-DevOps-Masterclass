    module  "demo_stack"  {
    source = "../../modules/demo_stack"

    aws_region        = "ap-south-1"
    ami_id            = "ami-0ff5003538b60d2ec"
    instance_name     = "test-demo-ec2"
    instance_type     = "t2.medium"
    enable_monitoring = false
    environment       = "test"
    iam_user_name     = "test-demo-user"
    iam_user_purpose  = "test-demo"
    bucket_name       = "test-demo-bucket-245276523558"
    bucket_purpose    = "test-demo"
    enable_versioning = true

    }