variable "aws_region" {
  description = "region to deploy to"
  default = "eu-west-1"
}

variable "instance_name" {
  description = "name of the EC2 instance"
}

variable "instance_type" {
  description = "instance type for the EC2"
  default = "t2.micro"
}

variable "ami" {
  description = "instance ami used for EC2"
}