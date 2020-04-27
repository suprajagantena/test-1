resource "aws_lb" "lb" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  #security_groups   = ["aws_security_group.new.id"]
  subnets            = ["10.192.1.0/24", "10.192.2.0/24"]

  enable_deletion_protection = true

  access_logs {
    bucket  = "aws_s3_bucket.lb_logs.bucket"
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "dev"
  }
}
