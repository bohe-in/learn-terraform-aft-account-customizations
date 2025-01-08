variable "bucket_name" {
  type = string
}

variable "allow_cors" {
  type = bool
}

output "bucket" {
  value = aws_s3_bucket.bucket.bucket
}

output "aws_bucket" {
  value = aws_s3_bucket.bucket
}

output "bucket_regional_domain_name"{
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
}
