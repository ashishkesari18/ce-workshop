/*provider "aws" {
  region  = "us-east-2"
  profile = "CE"
}

module "s3_bucket" {
  source = "github.com/ashishkesari18/terraform-modules//modules/s3"

  bucket_name = "devops-central-us-east-2-news"
  environment = "Dev"
}*/

provider "aws" {
  region  = "us-east-2"
  profile = "CE"
}
locals {
    buckets = {
        "bucket1" = "devops-central-us-east-2-new"
        "bucket2" = "devops-central-us-east-2-new-again"
        "bucket3" = "devops-central-us-east-2-bucket3"
        "bucket4" = "devops-central-us-east-2-bucket4"
        "bucket5" = "devops-central-us-east-2-bucket5"
    }
}

module "s3_bucket" {
  source = "github.com/ashishkesari18/terraform-modules//modules/s3"
  for_each = local.buckets
  bucket_name = each.value
  environment = "Dev"
  }