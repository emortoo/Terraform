variable "ami" {     
    description = "aws ami"
    type = string
    default = "ami-016eb5d644c333ccb"
}

variable "region" {     
    description = "aws region"
    type = string
    default = "us-east-1"
}


variable "instance_type" {     
    description = "aws instance type"
    type = string
    default = "t2.micro"
}