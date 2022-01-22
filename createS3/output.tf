output "private_bucket" {
  description = "private_bucket"
  value       = aws_s3_bucket.sample_private_bucket.bucket
}

output "public_bucket" {
  description = "public_bucket"
  value       = aws_s3_bucket.sample_public_bucket.bucket
}