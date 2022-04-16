resource "aws_nat_gateway" "lab-nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.lab-public-subnet.id

  tags = {
    Name = "${var.env_prefix} NAT"
  }
}

  resource "aws_eip" "eip" {
}

