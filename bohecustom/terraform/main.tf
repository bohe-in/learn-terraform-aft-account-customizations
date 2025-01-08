data "aws_caller_identity" "current" {}

module "webapp-build-bucket" {
  source = "./modules/base-modules/website-bucket"
  bucket_name = "bohecustom"
  allow_cors = true
  error_document = "index.html"
  index_document = "index.html"
}
