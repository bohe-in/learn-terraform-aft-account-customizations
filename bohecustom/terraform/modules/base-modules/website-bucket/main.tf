module "public-bucket" {
  source = "../public-bucket"
  bucket_name = var.bucket_name
  allow_cors = var.allow_cors
}

resource "aws_s3_bucket_website_configuration" "static-website" {
  bucket = module.public-bucket.bucket

  index_document {
    suffix = var.index_document
  }

  error_document {
    key = var.error_document
  }
}
