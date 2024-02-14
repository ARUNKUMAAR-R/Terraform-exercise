## Author : ARUNKUMAAR R
## Description : Creating Remote Backend for Terraform
## Date : 13/02/24
## Language : HCL   

terraform {
  backend "s3" {
    region = "us-east-2"
    bucket = "terraform-backyend-jenkins"
    key    = "terraform"
  }
}
