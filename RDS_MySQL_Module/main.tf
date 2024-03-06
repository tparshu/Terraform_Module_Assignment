# Creation of db_subnet_group resource for attaching vpc to db_instance

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds_subnet_group"
  subnet_ids = [var.private_subnet_id1_value, var.private_subnet_id2_value]

  tags = {
    Name = "rds_subnet_group"
  }
}


# Creation of db_instance resource

resource "aws_db_instance" "mydb" {
  allocated_storage = 20
  db_name = "mydb"
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  username = var.username
  password = var.password
  parameter_group_name = "default.mysql5.7"
  publicly_accessible = false
  multi_az = false
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.id
  vpc_security_group_ids = [var.security_group_id_value]

     tags  = {
     Name = "mydb"
  }
 
}


