terraform {
  backend "s3" {
    region = "us-east-2"
    bucket = "terraform-backyend-jenkins"
    key = "terraform"
  }
}
