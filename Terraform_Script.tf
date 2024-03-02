Terraform Script
---------------


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "us-east-2"
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "example" {
  ami = "ami-0283a57753b18025b"
  count = 2
  instance_type = "t2.micro"
  key_name = "virginia"
  tags = {
    Name = "Kub-S"
  }
}
resource "aws_instance" "main" {
  ami = "ami-0283a57753b18025b"
  count = 1
  instance_type = "t2.medium"
  key_name = "virginia"
  tags = {
     Name = "Kub-Master"
  }
}
