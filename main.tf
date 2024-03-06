

module "ec2_instance" {
  source                  = "./modules/ec2_instance"
  ami_id                  = "ami-0c7217cdde317cfec"
  instance_type           = "t2.micro"
  vpc_id                  = module.vpc.vpc_id
  security_group_id_value = module.security_group.security_group_id
  public_subnet_id_value  = module.vpc.public_subnet_id
}



module "vpc" {
  source = "./modules/vpc"
  vpc_id = module.vpc.vpc_id
  #vpc_cidr_block = "10.0.0.0/16"
  #availability_zone = "us-east-1a"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id


}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "tusharparshuramkarbucket"
}

module "rds_mysql" {
  source = "./modules/rds_mysql"
  #db_name = "mydb"
  username                 = "admin"
  password                 = "Admintushar"
  vpc_id                   = module.vpc.vpc_id
  security_group_id_value  = module.security_group.security_group_id
  private_subnet_id1_value = module.vpc.private_subnet_id1
  private_subnet_id2_value = module.vpc.private_subnet_id2
}

#module "wordpress" {
# source = "./modules/wordpress"
#db_name = "mydb"
#username = "admin"
#password = "Admintushar" 
#instance_id_value = module.wordpress.instance.public_ip
#}
