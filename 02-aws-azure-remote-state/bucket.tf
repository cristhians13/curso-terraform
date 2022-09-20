resource "aws_s3_bucket" "first_bucket" {
  bucket = var.bucket_name_remote_state
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.first_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}