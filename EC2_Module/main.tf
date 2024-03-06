#Creation of EC2 Instance resource

resource "aws_instance" "myinstance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = aws_key_pair.mykey.id
  vpc_security_group_ids = [var.security_group_id_value]
  subnet_id = var.public_subnet_id_value
  
}
 
