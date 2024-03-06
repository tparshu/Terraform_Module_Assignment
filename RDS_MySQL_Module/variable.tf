#Variables define for db_instance

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "vpc_id" {
  type = string
  description = "value for vpc_id"
}

variable "private_subnet_id1_value" {
  type = string
}

variable "private_subnet_id2_value" {
  type = string
}


variable "security_group_id_value" {
  type = string
}

