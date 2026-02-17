output "bucket_one_name" {
  description = "Bucket one name"
  value       = aws_s3_bucket.bucket_one.id
}

output "bucket_two_name" {
  description = "Bucket two name"
  value       = aws_s3_bucket.bucket_two.id
}

output "bucket_one_arn" {
  description = "Bucket one ARN"
  value       = aws_s3_bucket.bucket_one.arn
}

output "bucket_two_arn" {
  description = "Bucket two ARN"
  value       = aws_s3_bucket.bucket_two.arn
}