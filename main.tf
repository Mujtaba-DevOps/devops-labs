terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0cbbe2c6a1bb2ad63"   # Ubuntu AMI (confirm this is latest)
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformTestServerInstance"
  }
}
