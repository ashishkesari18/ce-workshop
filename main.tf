provider "aws" {
  region  = "us-east-2"
  profile = "CE"
}

module "s3_bucket" {
  source = "github.com/ashishkesari18/terraform-modules//modules/s3"

  bucket_name = "devops-central-us-east-2-new"
  environment = "Dev"
}