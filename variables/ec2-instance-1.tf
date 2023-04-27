terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = { 
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

provider "aws" {
  region   = "us-east-1"
  #profile = "default"
}

resource "aws_instance" "App-Server" {
  ami              = "ami-016eb5d644c333ccb"
  instance_type    = "aws instance type"

  tags = {
    "Name" = "myfirst-terraform-server"
  }

}
