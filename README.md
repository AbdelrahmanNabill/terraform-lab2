# terraform-lab2

 - create vpc
 - create internet gateway
 - create public route table
 - create private route table
 - create public route
 - attach public route table to subnets 
 - create security group which allow ssh from 0.0.0.0/0
 - create security group that allow ssh and port 3000 from vpc cidr only
 - create ec2(bastion) in public subnet with security group from 7
 - create ec2(application) private subnet with security group from 8
 - create elastic ip
 - create natgateway
 - create private route table
 - attach private route table to private subnet
 - create two workspaces dev and prod
 - create two variables definition files .tfvars for the two environments
 - seperate network resources into network module 
 - apply the code in two different regions
 - run local provisioner to print public ip of the bastion host
 - create rds in two private subnets
 - create redis elastic cache cluster 
