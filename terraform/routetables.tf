## Create Route Tables

resource "aws_route_table" "sandbox-private" {
  vpc_id = aws_vpc.sandbox-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.sandbox-NAT.id
  }

  tags = {
    Name = "sandbox-private"
  }
}

resource "aws_route_table" "sandbox-public" {
  vpc_id = aws_vpc.sandbox-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sandbox-igw.id
  }

  tags = {
    Name = "sandbox-public"
  }
}
