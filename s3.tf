resource "aws_s3_bucket" "b" {
  bucket = "s3-34825-test.alb"
  acl    = "public"
}
