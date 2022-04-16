resource "aws_internet_gateway" "igw-lab" {
  vpc_id = aws_vpc.development-vpc.id

  tags = {
    Name = "${var.env_prefix}_igw"
  }
}