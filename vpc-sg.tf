resource "aws_vpc" "vpc-terra" {
  cidr_block = "192.168.0.0/16"
  instance_tenancy = "default"
  tags =  {
    Name = "terra-vpc"
  }
}

resource "aws_security_groups" "sg-1"  {
  Name = "sg-1"
  vpc_id = aws_vpc.vpc-terra.id
  Description = "sg for vpc-terra"
  ingress {
    From_port = "22"
    To_port = "22"
    protocol = "tcp"
    cidr_block = "0.0.0.0/0"
  }

  egress {
    From_port = "0"
    To_port = "65535"
    protocol = "-1"
    cidr_block = "0.0.0.0/0"
  }

  tags = {
   Name = "sg-1"
  }
}
