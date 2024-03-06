#Output value of EC2 Instance

output "instance_id" {
  value = aws_instance.myinstance.id
}
