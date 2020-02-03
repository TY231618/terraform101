output "ec2_id" {
  value = aws_instance.instance.id
}

output "ec2_arn" {
  value = aws_instance.instance.arn
}

output "ec2_az" {
  value = aws_instance.instance.availability_zone
}