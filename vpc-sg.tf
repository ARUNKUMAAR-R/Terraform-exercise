## Author : ARUNKUMAAR R
## Description : Creating VPC and SG in AWS using Terraform 
## Date : 14/02/24
## Language : HCL   


resource "aws_vpc" "vpc-terra" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "terra-vpc"
  }
}

resource "aws_security_group" "sg-1" {
  name        = "ec-sg-1"
  vpc_id      = aws_vpc.vpc-terra.id
  description = "sg for vpc-terra"
  ingress {
    from_port  = "22"
    to_port    = "22"
    protocol   = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port  = "0"
    to_port    = "65535"
    protocol   = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-sg"
  }
}
