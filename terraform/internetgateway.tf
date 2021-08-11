## Create internet gateway

resource "aws_internet_gateway" "sandbox-igw" {
  vpc_id = aws_vpc.sandbox-vpc.id
  tags = {
    Name = "sandbox-igw"
  }
}




