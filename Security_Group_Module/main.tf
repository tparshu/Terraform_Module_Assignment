#Creation of security_group resource

resource "aws_security_group" "mysg" {
  name        = "mysg"
  vpc_id =  var.vpc_id

  dynamic "ingress" {
    for_each = [22,80,443,3306]
    iterator = port
    content  {
          description = "HTTP from VPC"
          from_port   = port.value
          to_port     = port.value
          protocol    = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
    }
  }     

 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


