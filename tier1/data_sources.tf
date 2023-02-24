provider "aws" {
  region = "us-west-2"
  //access_key = "AKIA2AW3BDLVWWMWSWEW"
  //secret_key = "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"
  
}


data "aws_availability_zones" "available" {
}

data "aws_region" "current" {}

# Define VPC
data "aws_vpc" "default" {
  default = true
}

data "aws_key_pair" "cp_301_302" {
  key_name = "cp_301_302"
}

variable "private_subnets" {
  default = {
    "cp_301_302_sg_dev"  = 250
  }
}