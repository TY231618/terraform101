provider "aws" {
  profile    = "default"
  region     = "eu-west-1"
}

resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}