provider "aws" {
    region  = "us-east-2"
    profile = "CE"
}

resource "aws_s3_bucket" "devops_central" {
    bucket = "devops-central-us-east-2"
    tags = {
        Name        = "devops-central"
        Environment = "Dev"
    }
}
