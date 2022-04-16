resource "aws_subnet" "lab-public-subnet" {
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = var.subnet_cidr_block[0]
  availability_zone = var.avail_zone[0]
  tags = {
    Name = "${var.env_prefix}-public-subnet-1"
  }
}

resource "aws_subnet" "lab-private-subnet" {
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = var.subnet_cidr_block[1]
  availability_zone = var.avail_zone[0]
  tags = {
    Name = "${var.env_prefix}-private-subnet-1"
  }
}

resource "aws_subnet" "sec-public-subnet" {
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = var.subnet_cidr_block[2]
  availability_zone = var.avail_zone[1]
  tags = {
    Name = "${var.env_prefix}-public-subnet-2"
  }
}

resource "aws_subnet" "sec-private-subnet" {
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = var.subnet_cidr_block[3]
  availability_zone = var.avail_zone[1]
  tags = {
    Name = "${var.env_prefix}-private-subnet-2"
  }
}
