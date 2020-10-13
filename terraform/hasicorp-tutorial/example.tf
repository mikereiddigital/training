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
  region  = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-0a669382ea0feb73a"
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = var.name,
    New = "Tag"
  }

}