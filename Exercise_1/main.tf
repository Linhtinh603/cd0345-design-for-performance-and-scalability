terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "app-udacity-t2" {
  count = "4"
  ami           = "ami-04581fbf744a7d11f"
  instance_type = "t2.micro"

  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "app-udacity-m2" {
  count = "2"
  ami           = "ami-04581fbf744a7d11f"
  instance_type = "m4.large"

  tags = {
    Name = "Udacity M2"
  }
}