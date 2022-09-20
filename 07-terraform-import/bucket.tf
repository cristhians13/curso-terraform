resource "aws_s3_bucket" "bucket_terraform_import" {
  bucket = var.bucket_terraform_import_name
}