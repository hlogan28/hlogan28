## Create Route Table Associations

resource "aws_route_table_association" "sandbox-private-subnet" {
  subnet_id      = aws_subnet.sandbox-subnet-private.id
  route_table_id = aws_route_table.sandbox-private.id
}

resource "aws_route_table_association" "sandbox-public-subnet" {
  subnet_id      = aws_subnet.sandbox-subnet-public.id
  route_table_id = aws_route_table.sandbox-public.id
}