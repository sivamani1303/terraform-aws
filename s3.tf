resource "aws_s3_bucket" "main" {
  bucket = "${var.project_name}-storage-${random_id.bucket_suffix.hex}"

  tags = {
    Name    = "${var.project_name}-s3"
    Project = var.project_name
  }
}

# Random suffix to make bucket name unique
resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# Block all public access — private bucket
resource "aws_s3_bucket_public_access_block" "main" {
  bucket = aws_s3_bucket.main.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}