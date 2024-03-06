#Output value of Security_group_id

output "security_group_id" {
  value = aws_security_group.mysg.id
}

