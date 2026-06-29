terraform {
  backend "s3" {
    bucket  = "devops-central-us-east-2"
    key     = "terraform.tfstate"
    region  = "us-east-2"
    profile = "CE"
  }
}
