# terraform-lab2

1- create vpc
2- create internet gateway
3- create public route table
4- create private route table
5- create public route
6- attach public route table to subnets 
7- create security group which allow ssh from 0.0.0.0/0
8- create security group that allow ssh and port 3000 from vpc cidr only
9- create ec2(bastion) in public subnet with security group from 7
10- create ec2(application) private subnet with security group from 8
11- create elastic ip
12- create natgateway
13- create private route table
14- attach private route table to private subnet
15- create two workspaces dev and prod
16- create two variables definition files .tfvars for the two environments
17- seperate network resources into network module 
18- apply the code in two different regions
19- run local provisioner to print public ip of the bastion host
20- create rds in two private subnets
21- create redis elastic cache cluster 
