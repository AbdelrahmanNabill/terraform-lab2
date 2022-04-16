resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.lab-public-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.lab-private-subnet.id
  route_table_id = aws_route_table.private-route-table.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.sec-public-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.sec-private-subnet.id
  route_table_id = aws_route_table.private-route-table.id
}

