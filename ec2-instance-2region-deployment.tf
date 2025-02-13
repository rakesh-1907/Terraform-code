terraform {
    required_providers {
      aws={
        source = "hashicorp/aws"
      }
    }
}

provider "aws" {
    profile = "default"
    region = "ap-south-1"
}

provider "aws" {
    profile = "default"
    alias = "southeast"
    region = "ap-southeast-1"
}

resource "aws_instance" "Test-Server" {
    ami = "ami-00bb6a80f01f03502"
    instance_type = "t2.micro"
    tags={
        name="Test-server"
    }
  
}