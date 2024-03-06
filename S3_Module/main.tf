#Creation of S3_bucket resource with all default values

resource "aws_s3_bucket" "mys3bucket" {
  bucket = var.bucket_name
  }
