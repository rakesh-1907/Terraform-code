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

resource "aws_instance" "Database-Server" {
    ami = "ami-00bb6a80f01f03502"
    instance_type = "t2.micro"
    tags={
        name="Database-server"
    }
  
}

resource "aws_instance" "Singapore-Server" {
    provider = aws.southeast
    ami = "ami-039454f12c36e7620"
    instance_type = "t2.micro"
    tags={
        name="Singapore-Server"
    }
  
}