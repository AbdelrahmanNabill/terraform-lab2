resource "aws_vpc" "development-vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "${var.env_prefix}-VPC"
  }

}

