## Create nat gateway

resource "aws_nat_gateway" "sandbox-NAT" {
  allocation_id = aws_eip.sandbox-eip.id
  subnet_id     = aws_subnet.sandbox-subnet-public.id
  depends_on    = [aws_internet_gateway.sandbox-igw]

  tags = {
    Name = "sandbox-NAT"
  }
}