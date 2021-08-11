## Create Security Groups

resource "aws_security_group" "ssh-allowed" {
  vpc_id = aws_vpc.sandbox-vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["167.219.0.140/32"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["167.219.88.140/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["167.219.0.140/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["167.219.88.140/32"]
  }

  tags = {
    Name = "ssh-allowed"
  }
}

resource "aws_security_group" "ssh-allow-priv" {
  vpc_id = aws_vpc.sandbox-vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.ssh-allowed.id]
  }

  tags = {
    Name = "ssh-allow-priv"
  }
}