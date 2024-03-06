#Variables to define EC2 instance.

variable "ami_id" {
  type = string
}

variable "instance_type" {
    type = string
}

variable "vpc_id" {
  type = string
  }

variable "public_subnet_id_value" {
  type = string
}


variable "security_group_id_value" {
  type = string
}
