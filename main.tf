# Random suffix for unique names
resource "random_id" "suffix" {
  byte_length = 4
}

# S3 Bucket 1
resource "aws_s3_bucket" "bucket_one" {
  bucket = "${var.project_name}-one-${random_id.suffix.hex}"

  tags = {
    Name        = "Bucket One"
    Environment = var.environment
  }
}

# S3 Bucket 2
resource "aws_s3_bucket" "bucket_two" {
  bucket = "${var.project_name}-two-${random_id.suffix.hex}"

  tags = {
    Name        = "Bucket Two"
    Environment = var.environment
  }
}