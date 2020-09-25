terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0a669382ea0feb73a"
  instance_type = "t2.micro"
  subnet_id     = "subnet-7aa67d37"
}
