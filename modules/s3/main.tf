resource "aws_s3_bucket" "my_bucket" {
  bucket = "javxsk-bucket-mar25"  # Choose a unique bucket name
  acl    = "public"
}