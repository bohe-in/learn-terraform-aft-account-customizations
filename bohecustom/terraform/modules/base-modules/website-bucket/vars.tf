variable "bucket_name" {
  type = string
}

variable "index_document" {
  type = string
}

variable "error_document" {
  type = string
}

variable "allow_cors" {
  type = bool
}

output "bucket" {
  value = module.public-bucket.bucket
}


output "aws_bucket" {
  value = module.public-bucket.aws_bucket
}

output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.static-website.website_endpoint
}

output "bucket_regional_domain_name"{
  value = module.public-bucket.bucket_regional_domain_name
}
