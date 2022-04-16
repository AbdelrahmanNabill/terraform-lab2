module "network"{

 source = "./network"
region = var.region
vpc_cidr_block = var.vpc_cidr_block
subnet_cidr_block = var.subnet_cidr_block
avail_zone = var.avail_zone
env_prefix = var.env_prefix
instance_type = var.instance_type
public_key_location = var.public_key_location


}