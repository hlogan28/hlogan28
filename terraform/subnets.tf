## Create subnets

resource "aws_subnet" "sandbox-subnet-public" {
  vpc_id                  = aws_vpc.sandbox-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "sandbox-subnet-public"
  }
}

resource "aws_subnet" "sandbox-subnet-private" {
  vpc_id            = aws_vpc.sandbox-vpc.id
  cidr_block        = "10.0.101.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "sandbox-subnet-private"
  }
}