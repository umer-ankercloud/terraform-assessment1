resource "aws_s3_bucket" "private_bucket" {
  bucket = "umer-${var.environment}-app-bucket-187yhje3c"

  tags = {
    Name        = "Private App Bucket"
    Environment = var.environment
  }
}

resource "aws_s3_bucket_public_access_block" "private_bucket_block" {
  bucket = aws_s3_bucket.private_bucket.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}
