resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.development-vpc.id
    tags = {
        Name = "${var.env_prefix}_public_rt"
    }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-lab.id
  }
}

resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.development-vpc.id
    tags = {
        Name = "${var.env_prefix}_private_rt"
    }
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.lab-nat.id
  }
}
