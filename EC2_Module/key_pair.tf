# Key_Pair for connection with EC2 Instance.

resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  public_key = file("${path.module}/id_rsa.pub")
 
}
