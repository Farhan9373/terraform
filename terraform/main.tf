terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0aaa636894689fa47"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2"
  }
}
