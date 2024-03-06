#output values of rds_endpoint and db_instance

output "rds_endpoint" {
  value = aws_db_instance.mydb.endpoint
}
output "rds_instance_id" {
    value = aws_db_instance.mydb.id
}

