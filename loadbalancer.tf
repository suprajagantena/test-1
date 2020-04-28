resource "aws_lb" "lb" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  #security_groups   = ["aws_security_group.new.id"]
  subnets            = {$"data.aws_subnet.pub.id",$"data.aws_subnet.pri.id"}

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
