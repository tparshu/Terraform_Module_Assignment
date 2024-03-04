**About Project:**

  **Project Name** - Multi-Region Infrastructure Deployment using Terraform Modules
  
  **Introduction** - This document is renders to help for deploying AWS Services like  VPC, SG, EC2, S3 and RDS by using Terraform Modular concept.
  
  **Prerequisites** - AWS Account, IDE(VS Code) Terraform Installed.
  
  **Overview** - In this project I design a AWS Infrastructure by deploying Services like VPC, SG, EC2, S3 and RDS each in a separate module, in order to Automate entire Infra and Code Reusability. 
  
  **Module Description** -
  
   SG: In this module i configure the security measures for the instance 
  
   VPC: In this module i create a custom vpc for the instance, configure public subnet for EC2 and private subnet for RDS, I also configure Route table, Route table association etc
                       
   EC2_Instance: In this module i create a Remote Server of Ubuntu linux distribution, In this Server i attached a Custom VPC and a Custom Security group in order to maintain security and networking of the 
                instance
                       
   S3: In this module i create a S3 bucket with all default configurations
                       
   RDS: In this module i create a RDS MySQL database, configure private subnets and attached to same VPC and SG which are used in EC2 Instance
                       
 **Usage of Project** -  This project is used whenever we want to create same infrastructure in any other region we can reuse the entire code by simply repacing terraform.tf file. In terraform.tf file we can write the requrired regions parameter like region_name thats it and your infrastructure will be ready within a few minutes.
  
