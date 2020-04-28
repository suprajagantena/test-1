resource "aws_s3_bucket" "backup" {
  bucket = "s3-34825-backup-alb"
  acl    = "public"
}
