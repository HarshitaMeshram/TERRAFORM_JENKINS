terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  # Configuration options
}

resource "aws_instance" "instance" {
ami           = "ami-080e1f13689e07408"
instance_type = "t2.micro"

  tags = {
    Name = "Jenkins"
  }
}
